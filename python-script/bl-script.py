import struct 
import binascii
import serial
from time import sleep 
import os
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
import hashlib
import signal
from colorama import init, Fore, Style
# AES ECB Secret Key 
key = b"Not Secret Key__"
read_key = b"can read memory?"

PAGE0_START_ADDRESS =  0x08000000

# Supported Commands Numbers 
GETVERSIONID   =                    1
GETCID         =                    2
READ_MEM       =                    3
ERASEFLASH     =                    4
GETRDPLEVEL    =                    5
GETUPDATE      =                    6
JUMPTOAPP      =                    7
GETHELP        =                    8
 



SIZEOFCID           =   4  # 4 bytes CID 
SIZEOFVID           =   1 # 1 byte VID
SIZEOFBLVERSION     =   3 # 3 byte Version {MAJOR:MINOR:PATCH} 
SIZEOFRDP           =   1 # 1 byte RDP                  1
BL_ACK =  b'\xA5'
BL_NACK = b'\x5A'

# All Supported Commands
cmd = { 1:b"\x05\x01",
        2:b"\x05\x02",
        3:b"\x0D\x03",
        4:b"\x07\x04",
        5:b"\x05\x05",
        6:b"\x0A\x06",
        7:b"\x06\x07",
        8:b"\x05\x08",
        }   

def Get_Serial_Buffer(data):
    crc = binascii.crc32(data)
    crc_bytes =  struct.pack("<I", crc) # pack crc in big endian byte format 
    buffer = data + crc_bytes
    return buffer

def get_help(cmd):
    global BL_ser 
    send_serial_buffer(cmd)
    wait_for_ack()
    s = ''
    while (True):
        s = str((BL_ser.read_until(b"\0").decode()))
        if (s is None) :
            break 
        elif (s == 'END'+'\0') :
            break
        print(str(s))
        sleep(0.2)
    
#########################################
def get_cid(cmd):    
    global BL_ser 
    send_serial_buffer(cmd)
    wait_for_ack()
    cid = BL_ser.read(SIZEOFCID)
    chip_id_int = int.from_bytes(cid,byteorder = "little",signed = False) 
    print(f"Chip ID is : 0x{chip_id_int:04X}")

########################################    
def get_rdp(cmd):    
    global BL_ser 
    send_serial_buffer(cmd)
    wait_for_ack()    
    rdp = BL_ser.read(SIZEOFRDP)
    rdp_int = int.from_bytes(rdp,byteorder = "little",signed = False)
    print(f"RDP level is : {rdp_int}") 
#######################################
def get_vid(cmd):
    global BL_ser 
    send_serial_buffer(cmd)
    wait_for_ack()
    version_data = bytearray()
    version_data += BL_ser.read(SIZEOFBLVERSION+SIZEOFVID)

    print(f"Vendor ID: {version_data[0]:02X}")
    print(f"BootLoader Version: {version_data[1]}:{version_data[2]}:{version_data[3]}") 
#########################################
def timeout_handler(signum, frame):
        print("Erase Finished .... ")
signal.signal(signal.SIGALRM, timeout_handler)

def erase_flash(cmd):
    global BL_ser
    
    print("STM32f103c8t6 MCU Medium Density has 64 page starting from page 0 to 63")
    starting_page = int(input("Enter Starting Page: "))
    pages_num = int(input("Enter Number of Pages to erase: "))

    while (starting_page > 63 or starting_page < 0 ):
            print("Invalid Page Number try again !!")   
            starting_page = int(input("Enter Starting Page: "))
          
    while ((starting_page + pages_num) < 0 or (starting_page + pages_num) > 64) :
        print("Invalid number of pages try again")
        pages_num = int(input("Enter Number of Pages to erase: "))

    # convert integers to bytes 
    start_byte = starting_page.to_bytes(1, byteorder='big')  # 'big' for big-endian
    pages_num_byte = pages_num.to_bytes(1,byteorder='big') 

    print(f"start:{start_byte},num:{pages_num_byte}")
    extended_buffer = cmd + start_byte + pages_num_byte
    # Sending Serial Buffer
    send_serial_buffer(extended_buffer)
    wait_for_ack()
    signal.alarm(5)
    try:
        wait_for_ack()
    except TimeoutError as e:
            pass
    finally:
        signal.alarm(0)  # Cancel the alarm if the function completes
     
page_app = -1      

def jump_to_app(cmd):
    global page_app

    while (page_app < 0 or page_app > 63) :
        print("STM32f103c8t6 MCU Medium Density has 64 page starting from page 0 to 63")
        page_app = int(input("Enter App starting page: "))
        if (page_app < 0 or page_app > 63) :
            print("invalid page number try again !!")    
    page_byte = page_app.to_bytes(1, byteorder='big')  # big endian 
    buffer = cmd + page_byte    
    send_serial_buffer(buffer)
############################################
def send_serial_buffer(buffer):
    global BL_ser
    serial_buffer = Get_Serial_Buffer(buffer)
    # Sending length to follow  
    BL_ser.write(serial_buffer[:1])
    #print(f"len sent:{serial_buffer[:1]}")
    #sending the remaining data in buffer with length = len 
    #print(f"data_sent: 0x{buffer[1:].hex()}")
    BL_ser.write(serial_buffer[1:])



def Hash_Hex_File(file):
    hasher = hashlib.sha256()
    hasher.update(file)  
    print("hashing ...")
    print(f"Hash is {hasher.hexdigest()}")
    return bytes.fromhex(hasher.hexdigest())

def Accumulate_Hash(hasher,data) :
    hasher.update(data)  
    return hasher 
def encrypt_aes_ecb(aes_key,data):
    # Create a new AES cipher in ECB mode
    cipher = AES.new(aes_key, AES.MODE_ECB,use_aesni=True)
    # Pad data to be a multiple of the block size (16 bytes for AES)
    
    data_len = len(data)
    print(f"data_len = {data_len}")
    padding = bytearray()
    if (data_len < 16):
        # Create padding by decrementing values starting from 0x01, 0x02, 0x03, etc.
        for i in range(16 - data_len):
            # Counter decrement from 0x01
            padding.append((i + 1) % 256)  # Wrap around if it exceeds 0x
        #aligned_data = data + b'\x00' * padding_len
        # Encrypt the padded data     
    encrypted_data = cipher.encrypt(data + padding)
    return encrypted_data

##################################################
def wait_for_ack():
    global BL_ser,BL_ACK,BL_NACK
    ret = BL_ser.read(1)
    if (ret == BL_ACK):
        print("ack")
    elif (ret == BL_NACK):
        print(f"Recieved No Ack") 
        print("try again") 
    else :
         print("Invalid Response ")     
    return ret 
############################################
def send_file(serial_port, file_path,chunk_size=16):
    global key 
    print("Sending Hex File ")
    """ Reading a file and send it over serial in chunks. """
    try:
        with open(file_path, 'rb') as f:
            total_bytes_sent = 0
            file_size = os.path.getsize(file_path)
            total_file = f.read()
            hash = Hash_Hex_File(total_file)
            enc_hash = encrypt_aes_ecb(key,hash) 
            cipher = AES.new(key, AES.MODE_ECB)
            print(f"Sent_Encypted_Hash: {enc_hash.hex()}")    
            hasher = hashlib.sha256() 
            #print(f"Hash length is {len(hash)}")
            wait_for_ack()
            print("Sending Encypted Hash ... ")
            serial_port.write((enc_hash))
            print(f"Tx_enc_hash = {enc_hash.hex()}")
            wait_for_ack()

            f.seek(0)
            while total_bytes_sent < file_size:

                #if (file_size - total_bytes_sent < chunk_size):
                 #    chunk_size = file_size - total_bytes_sent 

                # read chunk of data
                chunk = f.read(chunk_size)
                print(f"Chunk_bef_Encryption:{chunk.hex()}")
                if not chunk:  # if the chunk is empty
                    break
                     
                wait_for_ack()
                
                hasher = Accumulate_Hash(hasher,chunk)                 
                # send the chunk to the bootloader
                
                enc = encrypt_aes_ecb(key,chunk)


                bytes_sent = serial_port.write(enc)
                print(f"bytes_sent = {bytes_sent}")     
                total_bytes_sent += bytes_sent    
                wait_for_ack()     
            
                #print(f"Sent {bytes_sent} bytes: {chunk.hex()}")

            print(f"calc_hash  = {hasher.hexdigest()}")
            # Send end-of-transmission indicator
            sleep(1)


    except Exception as e:
        print(f"Error: {e}")

def get_update(cmd):
            # Get the size of the file
    file_path = str(input("Enter bin file path (e.g ./update.bin) :"))
    page_app = 46
    while (page_app < 0 or page_app > 63) :
        print("STM32f103c8t6 MCU Medium Density has 64 page starting from page 0 to 63")
        page_app = int(input("Enter App starting page: "))
        if (page_app < 0 or page_app > 63) :
            print("invalid page number try again !!")    
    file_size = os.path.getsize(file_path)
    file_size = int(((file_size + 3) /4))* 4  # allign file size to 4 bytes 
    print(f"Size of file '{file_path}': {file_size} bytes")
    size_bytes = file_size.to_bytes(4,byteorder='big')
    page_bytes = page_app.to_bytes(1,byteorder='big')
    buffer = cmd + size_bytes + page_bytes
    send_serial_buffer(buffer)
    wait_for_ack()    
    send_file(BL_ser,file_path,chunk_size=16)  
    wait_for_ack()
    print_update_complete()
def print_update_complete():
    
    # ANSI escape codes for colors and styling
    BLUE = '\033[94m'
    GREEN = '\033[92m'
    BOLD = '\033[1m'
    RESET = '\033[0m'

    # Fancy update message
    print(f"{BLUE}{BOLD}======================================")
    print(f"{GREEN}{BOLD}       Update Downloaded Successfully!")
    print(f"{BLUE}{BOLD}======================================{RESET}")



def print_welcome_message():
    # Initialize colorama for cross-platform compatibility
    init(autoreset=True)

    # Fancy and decorative welcome message
    print(f"{Fore.MAGENTA}{Style.BRIGHT}╔═════════════════════════════════════════════════════════════════════════╗")
    print(f"{Fore.CYAN}{Style.BRIGHT}║            ★ Welcome to AboKhalil Bootloader Script ★                 ║")
    print(f"{Fore.MAGENTA}{Style.BRIGHT}╠═════════════════════════════════════════════════════════════════════════╣")
    print(f"{Fore.GREEN}{Style.BRIGHT}║                      8 → For Help and Instructions                    ║")
    print(f"{Fore.MAGENTA}{Style.BRIGHT}╚═════════════════════════════════════════════════════════════════════════╝")


     


def Open_Serial_Port():
    while True:
        port = "/dev/ttyUSB0" #str(input("Dev (ex:\dev\\ttyUSB0):"))
        if (type(port) is not str ):
            print("Error Invalid Port")
        else :  
            baudrate = 115200 # int(input("baud (ex:115200):"))
            if (type(baudrate) is not int ):
                print("Error Invalid Port")
            else :
                break     
        
    print(f"Connecting on port {baudrate}")
    ser = serial.Serial(port,baudrate) 
    return ser 
def reverse_bytes(data):
    return data[::-1]
BL_ser = 0 

def read_mem(hostbuffer):
    global BL_ser 
    hex_address = input("Enter address  in hex format (e.g., 0x08000000 or 08000000): ")
    # Remove the "0x" prefix 
    if hex_address.startswith("0x"):
        hex_address = hex_address[2:]

    # Convert the hex string to an integer
    address_int = int(hex_address, 16)

    len = int(input("Enter Length to read: "))

    print(f"Hex Input: {hex_address}")
    print(f"Integer Value: {address_int}")
    print(f"len Value: {len}")
    address_bytes = address_int.to_bytes(4,byteorder='big')
    len_bytes =  len.to_bytes(4,byteorder='big')

    buffer = hostbuffer + address_bytes + len_bytes
    buffer = Get_Serial_Buffer(buffer)
    send_serial_buffer(buffer)
    ack = wait_for_ack()
    if (ack == BL_ACK):
        enc_seed = bytearray()
        seed = BL_ser.read(16)
        print(f"Seed____   : {seed.hex()}")
        enc_seed += encrypt_aes_ecb(read_key,seed)
        sleep(1)
        bytes_sent = BL_ser.write(enc_seed)
        rx_enc_seed = BL_ser.read(16)
        print(f"tx_enc_seed: {enc_seed.hex()}")
        print(f"rx_enc_seed: {rx_enc_seed.hex()}")
        ack = wait_for_ack()
        if (ack == BL_ACK) :
            print("AUTHORIZED !!!! ") 
            data = BL_ser.read(len)
            print(" ".join(f"0x{byte:02x}" for byte in data))
        else :
             print("NOT AUTHORIZED !!")    
    else:    
        print("Try Again")




try:
    # open serial port

    BL_ser = Open_Serial_Port()
    # start ack 
    wait_for_ack()
    print("Bootloader Started .... ")
    while True:
        print_welcome_message()
        if (BL_ser is not None):
                BL_ser.flush()
                cmd_num = int(input())
                #print(f"cmd_num = {cmd_num}")
                if cmd_num == GETHELP :
                        print("get help cmd ")
                        get_help(cmd[GETHELP]) 
                elif  cmd_num == GETCID:
                        print("get cid")
                        get_cid(cmd[GETCID])
                elif cmd_num == GETVERSIONID :
                        print("get version id")
                        get_vid(cmd[GETVERSIONID])
                elif cmd_num == GETRDPLEVEL:
                        print("Getting RDP Level")
                        get_rdp(cmd[GETRDPLEVEL])  
                elif cmd_num == ERASEFLASH :
                        print("Erasing Flash")
                        erase_flash(cmd[ERASEFLASH])
                elif cmd_num == JUMPTOAPP :
                        print("jumping to app")
                        jump_to_app(cmd[cmd_num])
                elif cmd_num == GETUPDATE:
                        print("Getting Update")
                        get_update(cmd[cmd_num])
                elif cmd_num == READ_MEM :
                    print("Reading memory")
                    read_mem(cmd[READ_MEM])        
                else :
                    print("Not Supported Command ^_^ ")
        # Generate CRC32
except Exception as e:
    print(e)



