/**
 ******************************************************************************
 * @file           : bl_config.h
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

#ifndef INC_BL_CONFIG_H_
#define INC_BL_CONFIG_H_

//#define DEBUG_ENABLED

/* ======================= Macro Definitions ================================*/
#define BL_RX_BUFFER_LEN 20u

#define BL_DISABLED     0x00u
#define BL_ENABLE_UART 	0x01u
#define BL_ENABLE_SPI 	0x02u
#define BL_ENABLE_CAN	0x04u

#define HOST_USART_HANDLE   huart1  /* configure */
#define BL_HOST_COM_METHOD 	BL_ENABLE_UART /* configure */

#ifdef DEBUG_ENABLED
  #define DEBUG_USART_HANDLE  huart2	/* configure */
  #define BL_DEBUG_METHOD 	BL_DISABLED /* configure */
#endif

#define APP_MAX_SIZE	  	18u
#define PREDEF_APP_PAGE_NUM  	APP_MAX_SIZE
#define PREDEF_APP_SIZE    	(uint32_t)(PREDEF_APP_PAGE_NUM * 1024)
#define HASH_SIZE  		32
#define APP_START_PAGE  	27
#define UPDATE_START_PAGE 	46
#define PREDEF_MAX_APPS 	2

#define FLASH_START 		0x08000000
#define FLASH_END   		0x08010000

#define BL_INFO_PAGE      	26

#endif /* INC_BL_CONFIG_H_ */
