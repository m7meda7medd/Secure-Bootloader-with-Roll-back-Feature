/**
 ******************************************************************************
 * @file           : bootloader.h
 * @brief          : Header file for the STM32F103C8T6 Bootloader.
 ******************************************************************************
 * @attention
 *
 * 2024 - Abokhalil.
 * All rights reserved.
 *
 *
 ******************************************************************************
 */
#ifndef INC_BOOTLOADER_H_
#define INC_BOOTLOADER_H_
/* HAL drivers includes */
#include "stm32f1xx_hal.h"
/* GLIBC includes */
#include "stdio.h"
#include "stdlib.h"
#include "stdarg.h"
#include "string.h"
/* Project Specific Includes */
#include "bl_config.h"
#include "bl_typedef.h"
#include "crc.h"
#include "mbedtls/aes.h"
#include "mbedtls/sha256.h"
/* ======================= Extern Declarations ==============================*/
extern UART_HandleTypeDef huart2;
extern UART_HandleTypeDef huart1;
extern CRC_Handle_t hcrc;
/* ======================= Interfaces Declarations ==============================*/

BL_STATUS  BL_WriteToFlash(uint8_t page,uint8_t *data, uint32_t size) ;

void
BL_Init ();

void
BL_SendMSG (UART_HandleTypeDef *huart, char *format, ...);

BL_STATUS
BL_FetchUARTCommand ();

BL_STATUS
BL_Read_APPS_INFO ();
void
BL_SendAck (uint8_t ack);
uint8_t
BL_VerifyApplication (void);
BL_STATUS
BL_JumptoVerifiedAPP ();
void
BL_JumpToApplication (uint8_t app_starting_page);
BL_STATUS
BL_WriteAppsInfoToFlash (BL_INFO_t *info);
void
Get_CurrentBL_Info (BL_INFO_t *dest);
uint8_t
BL_InstallApplication ();
void
BL_DeInit ();
#endif /* INC_BOOTLOADER_H_ */
