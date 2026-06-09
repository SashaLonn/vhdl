import sys
import os
import serial
import time
import datetime
import argparse
import struct
import winsound
from pathlib import Path
#import serial.tools.list_ports
#import re
import traceback
#import shutil
#import subprocess
#import xml.etree.ElementTree as ET
from function_lib import *

# ===================================================================
# Info of bit meaning in control and status at bottom
# ===================================================================

# ===================================================================
# Command line arguments
# ===================================================================
cmd_parser = argparse.ArgumentParser(description="Communicates with an SSI-master in an FPGA")

cmd_parser.add_argument("-i","--init",action="store_true",help="Sets up predefined parameters")
cmd_parser.add_argument("-pos","--readpos",nargs="?",const='one',help="Read position")
cmd_parser.add_argument("-rpc","--readposcont",action="store_true",help="Starts reading position continiously.")
cmd_parser.add_argument("-srpc","--stopreadposcont",action="store_true",help="Stops reading position continiously.")
cmd_parser.add_argument("-s","--status",nargs="?",const="*",help="Read status register.")
cmd_parser.add_argument("-rp","--readparameter",nargs="*",help="Read parameter.")
cmd_parser.add_argument("-wp","--writeparameter",nargs="*",help="Write parameter.")
cmd_parser.add_argument("-sb","--setbit",nargs=1,help="Sets specific  bit in control register.")
cmd_parser.add_argument("-cb","--clearbit",nargs=1,help="Clears specific  bit in control register.")
cmd_parser.add_argument("-t","--test",action="store_true",help="Read pos continiously and monitor status.")
cmd_parser.add_argument("-q","--quit",action="store_true",help="Stops ongoing operations.")


args = cmd_parser.parse_args()

def set_para_nr(parameter):
  if parameter == "control" or parameter == "c" or parameter == "0x01":
    return 1
  elif parameter == "mtbits" or parameter == "mt-bits" or parameter == "0x02":
    return 2
  elif parameter == "stbits" or parameter == "st-bits" or parameter == "0x03":
    return 3
  elif parameter == "sampleinterval" or parameter == "0x04":
    return 4
  elif parameter == "pausetime" or parameter == "0x05":
    return 5
  elif parameter == "ssiclk" or parameter == "0x06":
    return 6
  elif parameter == "nrpos" or parameter == "0x07":
    return 7
  elif parameter == "zplength" or parameter == "0x08":
    return 8
  elif parameter == "zeroset" or parameter == "0x09":
    return 9
  elif parameter == "direction" or parameter == "0x0a":
    return 10
  elif parameter == "tcal" or parameter == "0x0b":
    return 11
  elif parameter == "status" or parameter == "s" or parameter == "0x11":
    return 17
  elif parameter == "position" or parameter == "pos" or parameter == "0x012":
    return 18
  elif parameter == "stpos" or parameter == "0x13":
    return 19
  elif parameter == "mtpos" or parameter == "0x14":
    return 20
  elif parameter == "0x15":
    return 21
  elif parameter == "0x16":
   return 22
  elif parameter == "0x17":
   return 23
  else:
    return 0 # unused, will generate an error
      
# originally from jcom
def para_r(parameter,pr='y'):
  global bull_ser
  if 'bull_ser' in globals():
    pass
  else:
    print("No comport available")
    return
  #data_length = 4
  error_mess = 255
  bull_ser.reset_input_buffer()
  para_nr = set_para_nr(parameter)
  b = bytes([0x01,para_nr,0x00])
  cs = sum(b) & 0xFF
  bull = b + bytes([cs])
  #print("Sending:             ",end="")
  #print(bull)
  bull_ser.write(bull)
      
  intro = bull_ser.read(3)
  #print("Intro:               ",end="")
  #print(intro)
  if intro != b'':
    if int(intro[2]) != 0:
      data = bull_ser.read((int(intro[2])))
      #print("Data:                ",end="")
      #print(data)
  else:
    print("No data received")
    data = b''
  bull_m = intro + data
  #print("Message bull_m:             ",end="")
  #print(bull_m)
  ccs = bytes([sum(bull_m) & 0xFF])
  #print("calculated checksum: ",end="")
  #print(ccs)
  rcs = bull_ser.read(1)
  #print("read checksum:       ",end="")
  #print(rcs)
  data_v = int.from_bytes(data, "big")  
  bite  = 16
  if rcs == ccs:
    if intro[0] == error_mess:
      errot_time = nu_str()
      print("Error occured: " ,end="")
      print(format(data[0],'08b'))
      print("error  at " + errot_time)
     # print("Data:                ",end="")
      #print(data_v)
    else:
      if para_nr == 0x16:
         print(" Odd parity bit (including start bit)")
         bite = 1
      if para_nr == 0x15:
         bite = 14
      if para_nr == 0x17:
         bite = 16
         print("Postion value(14 downto 1) start bit(0) and parity bit(15)")
      if pr == 'y':
        print(str(parameter) + " value: ", end ="")
        #print(hex(int.from_bytes(data, "big")) + "  b'" + format(data_v,'016b'))        
        print("0x" + format(data_v, "02x") +  "  b'" + f"{int.from_bytes(data, 'big'):0{bite}b}" + "  Dec: " + str(data_v))       
      return data_v
  else:
    print("Checksum error")
        
# originally from jcom
def para_w(parameter,value,pr='y'):
    global bull_ser
    if 'bull_ser' in globals():
        pass
    else:
        print("No comport available")
        return
    #data_length = 4
    error_mess = 255
    bull_ser.reset_input_buffer()
    para_nr = set_para_nr(parameter)
    b = bytes([0x81,para_nr,0x02])
    value_b = (value).to_bytes(2, byteorder ='big')
    b = b + value_b
    cs = sum(b) & 0xFF
    bull = b + bytes([cs])
    bull_ser.write(bull)
        
    intro = bull_ser.read(3)
    if intro != b'':
        if int(intro[2]) != 0:
            data = bull_ser.read((int(intro[2])))
        else:
            data = b''
    else:
        print("No data received")
        data = b''
    bull_m = intro + data
    ccs = bytes([sum(bull_m) & 0xFF])
    rcs = bull_ser.read(1)
    if rcs == ccs:
        if intro[0] == error_mess:
            print("Error occured: ",end="")
            print(format(data[0],'08b'))
        elif pr == "y":
            print("Write OK")
    else:
        print("Checksum error")

# originally from jcom
def para_sc(parameter,value,action,pr='y'):
    global bull_ser
    if 'bull_ser' in globals():
        pass
    else:
        print("No comport available")
        return
    #first read parameter
    if pr == 'y':
      print("Old value:    ",end ="")
    old_value = para_r(parameter,pr)
    mask_set = 2**value
    mask_clear = mask_set ^ 0xFFFF
    if action == "set":
        new_value = old_value | mask_set
    elif action == "clear":
        new_value = old_value & mask_clear
    para_w(parameter,new_value,pr)
    if pr == 'y':
      print("New value:    ",end ="")
    para_r(parameter,pr)
    
def setup_radar_enc():
  para_w("mtbits",0,"n")
  para_w("stbits",16,"n")
  para_w("ssiclk",1000,"n")
  para_w("sampleinterval",3,"n")
  
def setup_12_13_bin():
  para_w("mtbits",12,"n")
  para_w("stbits",13,"n")
  para_w("ssiclk",1000,"n")
  para_w("sampleinterval",5,"n")

def setup_st13():
  para_w("mtbits",0,"n")
  para_w("stbits",13,"n")
  para_w("ssiclk",1000,"n")
  para_w("sampleinterval",5,"n")
  #para_w("direction",0,"n")
 # para_w("zeroset",0,"n")

def setup_12_13_gray():
  para_w("mtbits",12,"n")
  para_w("stbits",13,"n")
  para_w("ssiclk",1000,"n")
  para_sc("control",4,"set","n")
  para_w("sampleinterval",5,"n")


def setup_radar_ss2_mode() :
  para_sc("control",13,"set")
  para_sc("control",14,"set")

# radar encoder
def test_1(): 
  winsound.Beep(5000,500)
  start_time = nu_str()
  pr = 'n'
  para_r("status",'n') # read status once before test to clear errors (power on)
  path = "./logs"
  file_n = path + '/' + "radar_log_" + start_time.replace(":","_")+ ".txt"
  if not os.path.exists(path):
    os.makedirs(path)
  f_d = open(file_n,'w')
  print("Starting tests at " + start_time)
  f_d.write("Starting tests at " + start_time + "\n\n")
  print('Press "Ctrl + C" to abort\n')
  every_th = 2 # print every nr-th position
  
  # remember to create a means to end
  # setup encoder
  setup_radar_enc()
  # start continious read
  para_sc("control",2,"set",pr)
  para_sc("control",3,"set",pr)
  
  measured_min = 280
  measured_max = 602
  max_delta_diff = 150
  min_delta = measured_min - max_delta_diff
  max_delta = measured_max + 2000
  
  delta_max = 0
  delta_min = 2**16 -1
  
  i = every_th
  status_set = False
  old_pos = para_r("pos",'n')
  try:
    while True:
      position = para_r("pos",'n')
      if i == every_th:
        print("Position value: " + str(position).rjust(5) + "\r", end = "")
        i = 1
      else:
        i = i + 1
      #delta = position - old_pos
      #if delta > 0:
      #  if delta > max_delta:
      #    error_time = nu_str()
      #    print("\nDelta was to high: " + str(delta) + " at " + error_time + " New pos: " + str(position) + " Old pos: " + str(old_pos), flush=True)
      #    f_d.write("Delta was to high: " + str(delta) + " at " + error_time + " New pos: " + str(position) + " Old pos: " + str(old_pos) + "\n")
      #  if delta < min_delta:
      #    error_time = nu_str()
      #    print("\nDelta was to low: " + str(delta) + " at " + error_time + " New pos: " + str(position) + " Old pos: " + str(old_pos), flush=True)
      #    f_d.write("Delta was to low: " + str(delta) + " at " + error_time + " New pos: " + str(position) + " Old pos: " + str(old_pos) + "\n")
      #  if delta > delta_max:
      #    delta_max = delta
      #  if delta < delta_min:
      #    delta_min = delta
      #old_pos = position
      status = para_r("status",'n')
      if status > 0:
        if status_set == False:
          error_time = nu_str()
          winsound.Beep(2000,1500)
          print("\nAn error occurred " + error_time, flush=True)
          f_d.write("An error occurred " + error_time + "\n")
          status_set = True
      else:
        if status_set == True:
          ok_time = nu_str()
          winsound.Beep(4000,300)
          time.sleep(0.3)
          winsound.Beep(4000,300)
          print("\nStatus OK " + ok_time, flush=True)
          f_d.write("Status OK " + ok_time + "\n")
          status_set = False
      
      #para_r("pos") # use some some smart printing, not what the read parameters generates
      #para_r("status") # use some some smart printing, not what the read parameters generates
      #evaluate status
      #save errors to file
      #whatever more
  except:
    pass
  # stop continious read
  para_sc("control",2,"clear",pr)
  para_sc("control",3,"clear",pr)
  
  f_d.write("\nTest ended at " + nu_str() + "\n")
  f_d.close()
  print("\n\nDelta min: " + str(delta_min))
  print("Delta max: " + str(delta_max))
  print("\n\n")
  # close files
  # print summary etc

# 12 + 13 bit encoder


def test_ssi2_mode(): 
  start_time = nu_str()
  setup_radar_ss2_mode()
  pr = 'n'
  para_r("0x15",'n') # read status once before test to clear errors (power on)
  path = "./logs"
  file_n = path + '/' + "radar_log_" + start_time.replace(":","_")+ ".txt"
  if not os.path.exists(path):
    os.makedirs(path)
  f_d = open(file_n,'w')
  print("Starting tests at " + start_time)
  f_d.write("Starting tests at " + start_time + "\n\n")
  print('Press "Ctrl + C" to abort\n')
  every_th = 2 # print every nr-th position
    
  i = every_th
  measured_min = 280
  measured_max = 602
  max_delta_diff = 150
  min_delta = 1
  max_delta = measured_max + 2000
  
  delta_max = 0
  delta_min = 2**16 -1
 

  old_pos = para_r("0x15",'n')
  try:
    while True:
      position = para_r("0x15",'n')
      if i == every_th:
        print("Position value: " + str(position).rjust(5) + "\r", end = "")
        i = 1    
      else:
        i = i + 1
      delta = position - old_pos
      if delta > 0:
        if delta > max_delta and delta < 16000:
          error_time = nu_str()
          print("\nDelta was to high: " + str(delta) + " at " + error_time + " New pos: " + str(position) + " Old pos: " + str(old_pos), flush=True)
          f_d.write("Delta was to high: " + str(delta) + " at " + error_time + " New pos: " + str(position) + " Old pos: " + str(old_pos) + "\n")
        if delta < min_delta:
           error_time = nu_str()
           print("\nDelta was to low: " + str(delta) + " at " + error_time + " New pos: " + str(position) + " Old pos: " + str(old_pos), flush=True)
           f_d.write("Delta was to low: " + str(delta) + " at " + error_time + " New pos: " + str(position) + " Old pos: " + str(old_pos) + "\n")
        if delta > delta_max:
          delta_max = delta
        if delta < delta_min:
           delta_min = delta
      old_pos = position
  except:
    pass
  
  f_d.write("\nTest ended at " + nu_str() + "\n")
  f_d.write("Delta_max: " + str(delta_max)  + " Delta_min: " + str(delta_min) + "\n")
  f_d.close()



def main():
  comport = "COM3"
  baud = 9600
  global bull_ser
  
  try:
    bull_ser = setup_bull_serial_port(comport,baud)
    #if init_value == "initsig":
    #    bull_ser.setRTS(False) #false sets output to high
    #    time.sleep(0.2)
    close_port = 1
  except:
    print("Comport not available")
    close_port = 0
    return
    
  
  print("")
  print("==== SSI bull master ==========================================")
  #print("Command line: " + " ".join(sys.argv))
  
  # tests
  #print(args)
  # end tests
  
  
  # Init
  if args.init:
    print("\n==== Writing init parameters ==========================================\n")
    setup_st13()
  
  if args.readpos:
    #print("\n==== Reading position ==========================================\n")
    if args.readpos == 'one':
      nr_r = 1
    else:
      nr_r = int(args.readpos,0)
    
    for i in range(nr_r):
      para_r("pos")
      
    
    
  if args.readparameter:
    print("\n==== Reading parameter ==========================================\n")
    parameter = args.readparameter[0]
    print('"' + parameter + '"')
    para_nr = set_para_nr(parameter)
    print("Para Nr is: " + str(para_nr))
    if para_nr != 0:
      #print (set_para_nr(parameter))
      try:
        #loops = 
        for i in range(int(args.readparameter[1],0)):
          para_r(parameter)
      except:
        para_r(parameter)
    else:
      print("Not a valid parameter")
    
  if args.writeparameter:
    print("\n==== Writing parameter ==========================================\n")
 
    parameter = args.writeparameter[0]
    print (parameter)
    value = int(args.writeparameter[1],0)
    print (value)
    para_nr = set_para_nr(parameter)
    print("Para Nr is: " + str(para_nr))
    if para_nr != 0:
      para_w(parameter,value)
    else:
      print("Not a valid parameter")
    
  if args.setbit:
    print("\n==== Sets bit in control register ==========================================\n")
    para_sc("control",int(args.setbit[0],0),"set")
    
  if args.clearbit:
    print("\n==== Clearss bit in control register ==========================================\n")
    para_sc("control",int(args.clearbit[0],0),"clear")
    
  
  # Reads pos continiously with predefined interval if no argument for intervall is set
  if args.readposcont:
    print("\n==== Reading position continiously ==========================================\n")
    para_sc("control",2,"set")
    para_sc("control",3,"set")
    
  if args.stopreadposcont:
    print("\n==== Reading position continiously ==========================================\n")
    para_sc("control",3,"clear")
    para_sc("control",2,"clear")
    
  # Reads status
  if args.status:
    print("\n==== Reading status ==========================================\n")
    para_r("status")
    
  # Compile source code without running simulation
  if args.test:
    #test_1()
    #test_2()
    test_ssi2_mode()
    
  
  # Stop ongoing actions, for example continiously reading
  if args.quit:
    print("\n==== Quitting ============")
    
  
  if close_port == 1:
    close_serial_ports()
    #print("closing port")
    
  
  
# ===================================================================
# Main
# ===================================================================
if __name__ == "__main__":
  
  #run_start = datetime.datetime.now()
  try:
    main()
    retcode = 0
  except Exception as exc:
    traceback.print_exc()
    print("")
    print("Error executing program.")
    retcode = 1
  
  #print("\nFinished after " + str(datetime.datetime.now() - run_start))
  exit(retcode)


#  -----------------------------------------------------------------------------
#  -- Control reg bits
#  -----------------------------------------------------------------------------
#  constant C_BIT_NUFN                         :integer := 0; -- not used for now
#  constant C_BIT_USE_PAUS_TIME                :integer := 1;
#  constant C_BIT_USE_SAMPLE_INTERVAL          :integer := 2;
#  constant C_BIT_CONTINUOUS_POS               :integer := 3;
#  constant C_BIT_GRAY_TO_BIN                  :integer := 4;
#  constant C_BIT_USE_TCAL                     :integer := 5;
#  constant C_BIT_INVERTED_ZERO_SET            :integer := 6;
#  constant C_BIT_INVERTED_DIRECTION           :integer := 7;
#  constant C_BIT_ST_READ_TRIGGERS_POS_READ    :integer := 8;
#  constant C_BIT_MT_READ_TRIGGERS_POS_READ    :integer := 9;
#  constant C_BIT_POS_READ_TRIGGERS_POS_READ   :integer := 10;
#  constant C_BIT_COMPARE_POSITIONS            :integer := 11;
#  constant C_BIT_NR_CONS_POS_FIRST_POS        :integer := 12;
#  
#  constant C_BIT_RS485_PORT_IS_SSI            :integer := 15;

#  -- SSI2 Mode control reg bits
#  constant C_CONTINUOUS_CLK_SELECT_BIT        :integer := 13;
#  constant C_CHARGE_PULSE_ENABLE              :integer := 14;
#
#  
#  -----------------------------------------------------------------------------
#  -- Status reg bits
#  -----------------------------------------------------------------------------
#  constant S_BIT_ERROR_ACTIVE                 :integer := 0;
#  constant S_BIT_ERROR_LATCHED                :integer := 1;
#  constant S_BIT_UNUSED_2                     :integer := 2;
#  constant S_BIT_UNUSED_3                     :integer := 3;
#  constant S_BIT_COMPARED_POS_EQUAL           :integer := 4;
#  constant S_BIT_UNUSED_5                     :integer := 5;
#  constant S_BIT_UNUSED_6                     :integer := 6;
#  constant S_BIT_UNUSED_7                     :integer := 7;
#  constant S_BIT_UNUSED_8                     :integer := 8;
#  constant S_BIT_UNUSED_9                     :integer := 9;
#  constant S_BIT_UNUSED_10                    :integer := 10;
#  constant S_BIT_UNUSED_11                    :integer := 11;
#  constant S_BIT_CON_READS_ERROR              :integer := 12;
#  constant S_BIT_CONTINUOUS_ERROR             :integer := 13;
#  constant S_BIT_ST_ZERO_ERROR                :integer := 14;
#  constant S_BIT_POS_OVERFLOW_ERROR           :integer := 15;
  