/**
 ******************************************************************************
 * @file           : bl_typedef.h
 * @brief          : Header file for typedefs for the STM32F103C8T6 Bootloader.
 ******************************************************************************
 * @attention
 *
 * 2024 - Abokhalil.
 * All rights reserved.
 *
 *
 ******************************************************************************
 */
#ifndef INC_BL_TYPEDEF_H_
#define INC_BL_TYPEDEF_H_

typedef enum BL_CMD
{
  CBL_GET_VER_CMD = 1, /* BL Version Number ( */
  CBL_GET_CID_CMD, /* Chip Identification Number */
  CBL_MEM_READ_CMD, /* N bytes content from Memory */
  CBL_FLASH_ERASE_CMD, /* BL_OK or BL_NACK  */
  CBL_GET_RDP_STATUS_CMD, /* Returns Flash Read Protection Level  */
  CBL_GET_APP_UPDATE,/* BL_OK or BL_NACK */
  CBL_JUMPTOAPP, /* BL_OK or BL_NACK */
  CBL_GET_HELP_CMD, /* BL All Supported Codes  */
} BL_CMD;

typedef enum BL_STATUS
{
  BL_ACK = 0xA5, BL_NACK = 0x5A
} BL_STATUS;

typedef struct
{
  uint8_t hash[32]; /* app saved hash value */
  uint32_t app_size;
  uint8_t app_validity;
} App_INFO_t;

typedef struct
{
  uint8_t hash[32];
  uint32_t update_size;
  uint8_t updated;
} Update_INFO_t;

typedef struct
{
  App_INFO_t app;
  Update_INFO_t update;
} BL_INFO_t;

typedef struct
{
  uint8_t vendor_id;
  uint8_t major_version;
  uint8_t minor_version;
  uint8_t patch_version;
} Version_ID_t;

/* Host Command : CommandLength:CommandCode:Details(N bytes):CRC(4 bytes) */

#define CRC_VERIFY_PASS 0x01
#define CRC_VERIFY_FAIL 0x00

#define APP_VERIFIED     0x00
#define APP_NOT_VERIFIED 0x01
#define APP_NOT_FOUND 	 0x02
#define UPDATE_FOUND  	 0x03
#define NOR_APP_NOT_UPDATE_FOUND 0x04
#define VERIFICATION_ERROR   0x05

#define  STM32F103C8T6_PAGES_NUM 64
#define PAGE0_ADDRESS 0x08000000
#define PAGE_SIZE  (1024u)
/* CRC Size */
#define BL_CRC_SIZE 0x04u
#endif /* INC_BL_TYPEDEF_H_ */
