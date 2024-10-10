/**
 ******************************************************************************
 * @file           : bootloader.c
 * @brief          : Source file for the STM32F103C8T6 Bootloader.
 ******************************************************************************
 * @attention
 *
 * 2024 - Abokhalil.
 * All rights reserved.
 *
 *
 ******************************************************************************
 */
#include "bootloader.h"
#include <stdio.h>

/* bootloader private variables */
static uint8_t host_buffer[BL_RX_BUFFER_LEN];
static uint8_t key[16] =
  { "Not Secret Key__" };
static uint8_t read_key[16] =
  { "can read memory?" };

BL_INFO_t *bl_info_ptr = (BL_INFO_t*) (BL_INFO_PAGE * PAGE_SIZE + PAGE0_ADDRESS);

/* BL Send Debug message */
/* Static Functions declarations */
static void
Print_BLMenu (void);
static uint8_t
Start_Updating_Session (mbedtls_aes_context *aes_ctx,
			mbedtls_sha256_context *sha256_ctx);
static void
Read_EncryptedHashValue (uint8_t *encrypted);
static uint8_t
Decrypt_RecievedChunk (mbedtls_aes_context *ctx, uint8_t *enc, uint8_t *dec);
static uint8_t
Accumulate_Sha256Hash (mbedtls_sha256_context *sha256_ctx, uint8_t *chunk,
		       uint32_t chunck_size);
static uint8_t
End_Updating_Session (mbedtls_aes_context *aes_ctx,
		      mbedtls_sha256_context *sha256_ctx);

static uint8_t
Get_Calculated_Hash (mbedtls_sha256_context *sha256_ctx, uint8_t *calc_hash);
static uint8_t
Check_Packet_Validity (uint8_t *hostbuffer);
static void
Authorized_ReadMem (uint32_t address, size_t len);
/* Boot Loader Commands Function Declaration */

static void
Bootloader_GetHelp (void);

static void
Bootloader_EraseFlash_Wrapper (uint8_t *hostbuffer);
static void
Bootloader_EraseFlash (uint8_t starting_page, uint8_t number_of_pages);

static uint8_t
Bootloader_GetChipID (uint8_t *hostbuffer);
static uint8_t
Bootloader_GetVersionID (uint8_t *hostbuffer);

void
BL_JumpToApplication (uint8_t app_starting_page);
void
BL_JumpToApplication_Wrapper (uint8_t *hostbuffer);

static void
Bootloader_ReadProtectionLevel (uint8_t *hostbuffer);

static void
Bootloader_MemRead_Wrapper (uint8_t *hostbuffer);
void
Bootloader_MemRead (uint32_t address, size_t len);

static BL_STATUS
Bootloader_UpdateAPP (uint32_t app_size, uint8_t update_page);
static void
Bootloader_UpdateAPP_Wrapper (uint8_t *hostbuffer);
uint8_t
Set_ValidUpdate (Update_INFO_t *update);
static uint8_t
IS_VALID_ADDRESS (uint32_t address, size_t len);
/* ================================================================= */


BL_STATUS  BL_WriteToFlash(uint8_t page,uint8_t *data, uint32_t size) {
    HAL_StatusTypeDef status;
    uint32_t address = page * (PAGE_SIZE) + PAGE0_ADDRESS ;
    // Unlock the Flash memory

    Bootloader_EraseFlash(page, 1) ;
    // Calculate number of words to write (size in bytes / 4 bytes per word)
    uint32_t numWords = size / 4;
    uint32_t i;

    status = HAL_FLASH_Unlock();
    if (status != HAL_OK) {
        return status; // Return the error status
    }

    // Write data to Flash memory
    for (i = 0; i < numWords; i++) {
        uint32_t dataWord = *((uint32_t *)(data + (i * 4))); // Get the word from data
        status = HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, address + (i * 4), dataWord);
        if (status != HAL_OK) {
            break; // Exit if there's an error
        }
    }

    // Lock the Flash memory again
    HAL_FLASH_Lock();

    return status; // Return the status of the operation
}



/***************************************************************************/
/**
 * @brief  Writes application info structure to flash memory.
 * @param  info: Pointer to BL_INFO_t structure containing app info to write.
 */
BL_STATUS
BL_WriteAppsInfoToFlash (BL_INFO_t *info)
{
  BL_STATUS ret = BL_ACK;
  HAL_StatusTypeDef status = HAL_OK;

  Bootloader_EraseFlash (BL_INFO_PAGE, 1);
  status = HAL_FLASH_Unlock (); // unlock the Flash before writing
  if (status != HAL_OK)
    {
      ret = BL_NACK;
      return ret;
    }
  else
    {
      for (uint32_t i = 0; i < (sizeof(BL_INFO_t) / sizeof(uint32_t)); i++)
	{
	  status =
	      HAL_FLASH_Program (
		  FLASH_TYPEPROGRAM_WORD,
		  (uint32_t) ((uint8_t*) (BL_INFO_PAGE * (PAGE_SIZE)
		      + PAGE0_ADDRESS) + (i * sizeof(uint32_t))),
		  *(uint32_t*) ((uint8_t*) info + (i * (sizeof(uint32_t)))));

	  if (status != HAL_OK)
	    {

	      ret = BL_NACK;
	      break;
	    }
	}

      HAL_FLASH_Lock ();  // Lock the Flash after writing
    }
  return ret;
}
/* ====================== Static Function Definitions =========================*/
/**
 * @brief  Fetches the UART command sent to the bootloader.
 * @retval BL_STATUS: Status of the bootloader command (ACK/NACK).
 */

BL_STATUS
BL_FetchUARTCommand (void)
{

  BL_STATUS ret_status = BL_ACK;
  HAL_StatusTypeDef hal_status = HAL_ERROR;
  uint8_t data_len = 1;
  /* reset Host Buffer  */
  memset (host_buffer, 0, sizeof(host_buffer));

  /* Get the Buffer */
  for (uint8_t i = 0; i < 2; i++)
    {
      hal_status = HAL_UART_Receive (&HOST_USART_HANDLE, host_buffer + i,
				     data_len, 500);
      if (hal_status != HAL_OK)
	{
	  ret_status = BL_NACK;
	  return ret_status;
	}
      data_len = host_buffer[0];
    }
#ifdef DEBUG_ENABLED
		BL_SendMSG(&DEBUG_USART_HANDLE,"\n") ;
	#endif
  if (Check_Packet_Validity (host_buffer) == CRC_VERIFY_FAIL)
    {
#ifdef DEBUG_ENABLED
		BL_SendMSG(&DEBUG_USART_HANDLE,"ERROR: BL_Check_Packet() returned CRC_VERIFY_FAIL\r\n");
	#endif
      ret_status = BL_NACK;
      BL_SendAck (ret_status);
      return ret_status;
    }
  BL_SendAck (ret_status);
  /*  Switch based on the received command code (host_buffer[1]) */
  switch (host_buffer[1]/* Command Code */)
    {

    case CBL_GET_CID_CMD:
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "Debug: CMD: Get Chip ID ... \r\n");
    #endif
      Bootloader_GetChipID (host_buffer);

      break;
    case CBL_GET_VER_CMD:
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE,
		  "Debug: CMD: Getting BootLoader Version ID ... \r\n");
#endif
      ret_status = Bootloader_GetVersionID (host_buffer);
      break;
    case CBL_GET_HELP_CMD:
#ifdef DEBUG_ENABLED
      BL_SendMSG (
	  &DEBUG_USART_HANDLE,
	  "Debug: CMD: Getting All BootLoader Supported Commands ... \r\n");
#endif
      Bootloader_GetHelp ();
      break;
    case CBL_GET_RDP_STATUS_CMD:
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE,
		  "Debug: CMD: Getting RDB Status ...\r\n");
#endif
      Bootloader_ReadProtectionLevel (host_buffer);
      break;
    case CBL_JUMPTOAPP:
      /* Go to Address command */
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE,
		  "Debug: CMD: Going to your Application ... \r\n");
#endif
      BL_JumpToApplication_Wrapper (host_buffer);
      break;
    case CBL_MEM_READ_CMD:
      /* Memory Read CMD */
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE,
		  "Debug: CMD: Reading from Memory ... \r\n");
#endif
      Bootloader_MemRead_Wrapper (host_buffer);
      break;
    case CBL_FLASH_ERASE_CMD:
      /* Erase Flash */
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "Debug: CMD: Erasing Flash ... \r\n");

#endif
      Bootloader_EraseFlash_Wrapper (host_buffer);
      break;
    case CBL_GET_APP_UPDATE:
      /* Get app update */
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "Debug: CMD: Updating the APP ... \r\n");
#endif
      Bootloader_UpdateAPP_Wrapper (host_buffer);
      break;
    default:
      /* Invalid Command ID */
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "ERROR: Invalid Command Code\r\n");
#endif
    }

  return ret_status;
}
/***************************************************************************/
/**
 * @brief  Sends the bootloader version ID via UART.
 * @param  hostbuffer: Buffer containing the host command.
 * @retval uint8_t: Bootloader status (ACK).
 */
static uint8_t
Bootloader_GetVersionID (uint8_t *hostbuffer)
{
  Version_ID_t version_id =
    { .vendor_id = 0x1F, /* Siemens DISW Autosar Vendor ID */
    .major_version = 0x01
    /* Initialize the other members with zeros */
    };

  HAL_UART_Transmit (&HOST_USART_HANDLE, (uint8_t*) &version_id,
		     sizeof(version_id), HAL_MAX_DELAY);
  return BL_ACK;
}

/***************************************************************************/
/**
 * @brief  Sends the chip ID to the host via UART.
 * @param  hostbuffer: Buffer containing the host command.
 * @retval uint8_t: Bootloader status (ACK).
 */

static uint8_t
Bootloader_GetChipID (uint8_t *hostbuffer)
{
  uint32_t chip_id;
  chip_id = (READ_BIT(DBGMCU->IDCODE, DBGMCU_IDCODE_DEV_ID));

  HAL_UART_Transmit (&HOST_USART_HANDLE, (uint8_t*) &chip_id, sizeof(chip_id),
  HAL_MAX_DELAY);
  return BL_ACK;

}
/***************************************************************************/
/**
 * @brief  Displays the bootloader menu via UART.
 */
static void
Print_BLMenu (void)
{
  BL_SendMSG (&HOST_USART_HANDLE, "----------------------------------------");
  BL_SendMSG (&HOST_USART_HANDLE,
	      "1.  Get Bootloader Version ID           --> 1");
  BL_SendMSG (&HOST_USART_HANDLE,
	      "2.  Get Chip Identification Number      --> 2");
  BL_SendMSG (&HOST_USART_HANDLE,
	      "3.  Read Memory Contents                --> 3");
  BL_SendMSG (&HOST_USART_HANDLE,
	      "4.  Erase Flash Memory                  --> 4");
  BL_SendMSG (&HOST_USART_HANDLE,
	      "5.  Get Flash Read Protection Level     --> 5");
  BL_SendMSG (&HOST_USART_HANDLE,
	      "6.  Get Application Update              --> 6");
  BL_SendMSG (&HOST_USART_HANDLE,
	      "7.  Jump to Application Code            --> 7");
  BL_SendMSG (&HOST_USART_HANDLE,
	      "8.  Help                                --> 8");
  BL_SendMSG (&HOST_USART_HANDLE, "----------------------------------------");
  BL_SendMSG (&HOST_USART_HANDLE, "END");
}

/***************************************************************************/
/**
 * @brief  Displays the list of supported bootloader commands via UART.
 */
static void
Bootloader_GetHelp ()
{

  Print_BLMenu ();

}
/***************************************************************************/
/**
 * @brief  Verifies if an application is present and valid in memory.
 * @retval uint8_t: Status of the verification.
 */
uint8_t
BL_VerifyApplication (void)
{
  uint8_t calc_hash[32] =
    { 0 };
  uint8_t start_page = APP_START_PAGE;
  uint32_t address = (start_page * PAGE_SIZE) + PAGE0_ADDRESS;
  uint8_t is_valid = bl_info_ptr->app.app_validity;
  uint8_t status = 0;
  if ((is_valid == 0xff) || (is_valid == 0))
    {
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "\rNO APP FOUND\r\n");
#endif
      if (bl_info_ptr->update.updated == 1)
	{

	  status = UPDATE_FOUND;
	}
      else
	{
	  status = NOR_APP_NOT_UPDATE_FOUND;
#ifdef DEBUG_ENABLED
	  BL_SendMSG (&DEBUG_USART_HANDLE, "\rNO UPDATE FOUND\r\n");
#endif
	}
    }
  else
    {
      status = mbedtls_sha256_ret ((uint8_t*) address,
				   bl_info_ptr->app.app_size, calc_hash, 0);
      if (status != 0)
	{
#ifdef DEBUG_ENABLED
	  BL_SendMSG (&DEBUG_USART_HANDLE, "Error Calculating HASH on APP\r\n");
#endif
	  status = VERIFICATION_ERROR;

	}
      status = memcmp (calc_hash, bl_info_ptr->app.hash, HASH_SIZE);
      if (status == 0)
	{
	  /* valid Image */
#ifdef DEBUG_ENABLED
	  BL_SendMSG (&DEBUG_USART_HANDLE,
		      "\rDebug: Valid Hash: Jumping to the APP\r\n");
#endif
	  status = APP_VERIFIED;
	}
      else
	{
#ifdef DEBUG_ENABLED
	  BL_SendMSG (&DEBUG_USART_HANDLE,
		      "\rDebug: INVALID HASH __ REBOOT\r\n");
#endif
	  status = APP_NOT_VERIFIED;
	}
    }
  return status;
}
/***************************************************************************/
/**
 * @brief  Retrieves the current bootloader information.
 * @param  dest: Pointer to the destination structure to store bootloader info.
 */
void
Get_CurrentBL_Info (BL_INFO_t *dest)
{

  memcpy (dest, bl_info_ptr, sizeof(BL_INFO_t));
}
/***************************************************************************/
/**
 * @brief  Reads the flash memory's read protection level and sends it via UART.
 * @param  hostbuffer: Buffer containing the host command.
 */
static void
Bootloader_ReadProtectionLevel (uint8_t *hostbuffer)
{
  FLASH_OBProgramInitTypeDef initconfig;
  /* Get flash Configuration */
  HAL_FLASHEx_OBGetConfig (&initconfig);
  uint8_t level;
  switch (initconfig.RDPLevel)
    {
    case OB_RDP_LEVEL_0:

      level = 0;
      break;
    case OB_RDP_LEVEL_1:

      level = 1;
      break;
    default:

      level = 255;
    }
  HAL_UART_Transmit (&HOST_USART_HANDLE, &(level), 1, HAL_MAX_DELAY);
#ifdef DEBUG_ENABLED
  BL_SendMSG (&DEBUG_USART_HANDLE, "\rRDP Level: %d\r\n", level);
#endif
}

/***************************************************************************/
/**
 * @brief  Deinitializes all peripherals used by the bootloader.
 */
void
BL_DeInit ()
{
  /* deinitialize all peripherals */
  HAL_DeInit ();
}
/**
 * @brief  Sends an acknowledgment byte via UART.
 * @param  ack: The acknowledgment byte to be sent.
 */
void
BL_SendAck (uint8_t ack)
{
  /* Send ack byte */
  HAL_UART_Transmit (&huart1, &ack, 1, HAL_MAX_DELAY);
}

/**
 * @brief  Wrapper function for updating the application.
 *         Extracts the application size and starting page from the host buffer and calls the update function.
 * @param  hostbuffer: Pointer to the buffer containing the application size and starting page information.
 */
static void
Bootloader_UpdateAPP_Wrapper (uint8_t *hostbuffer)
{
  uint32_t app_size = (hostbuffer[2] << 24) | (hostbuffer[3] << 16)
      | (hostbuffer[4] << 8) | (hostbuffer[5]);
#ifdef DEBUG_ENABLED
  BL_SendMSG (&DEBUG_USART_HANDLE, "\rRecieved Size: %d\r\n", app_size);
#endif
  uint8_t update_starting_page = hostbuffer[6];
  Bootloader_UpdateAPP (app_size, update_starting_page);
}
/**
 * @brief  Updates the application and store it in memory
 * @param  app_size: The size of the application to be updated.
 * @param  update_page: The page where the update will start.
 * @retval BL_STATUS: Status of the update process (success or failure).
 */

static BL_STATUS
Bootloader_UpdateAPP (uint32_t app_size, uint8_t update_page)
{

  uint32_t rec_buffer[4] =
    { 0 };
  uint32_t decrypted_data[4] =
    { 0 };

  uint8_t rec_hash[32] =
    { 0 };
  uint8_t encrypted_hash[32] =
    { 0 };
  uint8_t calc_hash[32] =
    { 0 };
  uint8_t ack = BL_ACK;
  HAL_StatusTypeDef status;

  mbedtls_aes_context aes_ctx;
  mbedtls_sha256_context sha256_ctx;

  ack = Start_Updating_Session (&aes_ctx, &sha256_ctx);
  /* get the encryped hash value  */
  BL_SendAck (ack);
  Read_EncryptedHashValue (encrypted_hash);
  HAL_Delay (300);
  //Verify_Sent_Hash() ;
  BL_SendAck (ack);
  //update_page = Get_Update_Starting_Page() ;
  uint32_t app_start_mem_address = ((uint32_t) PAGE0_ADDRESS
      | (update_page * PAGE_SIZE));
  /* ensure alignment of app_size */
  app_size = ((app_size + 3) / 4) * 4; /* align app_size to 4 bytes */

  if (app_size > PREDEF_APP_SIZE)
    {
#ifdef DEBUG_EMABLED
      BL_SendMSG (&DEBUG_USART_HANDLE,
		  "\r Sorry! my memory can't afford that\r\n");
#endif
      return ack;
    }

  status = HAL_FLASH_Unlock ();

  if (status != HAL_OK)
    {
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "\rDebug: Unlocking failed\r\n");
#endif
      ack = BL_NACK;
      return ack;
    }
  // Flash erase before update
  FLASH_EraseInitTypeDef erase_init;
  erase_init.TypeErase = FLASH_TYPEERASE_PAGES;
  erase_init.PageAddress = app_start_mem_address;
  erase_init.NbPages = PREDEF_APP_PAGE_NUM; // Number of pages to erase
  erase_init.Banks = FLASH_BANK_1; // flash bank 1
  uint32_t page_error;

  if (HAL_FLASHEx_Erase (&erase_init, &page_error) != HAL_OK)
    {
      // Handle erase error
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "\rERROR: Erasing APP Flash\r\n");
#endif
      return ack;
    }
  else
    {
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE,
		  "\rDebug: Erasing APP Flash Success\r\n");
#endif
    }

  /* Read app chuncks */
  uint32_t download_address = app_start_mem_address;
  uint32_t data_to_recieve = 0;
  for (uint32_t app_counter = 0; app_counter < app_size; app_counter +=
      data_to_recieve)
    {
      /* Send acknowledge to Complete Transmition */
      BL_SendAck (ack);
      if ((app_size - app_counter) < sizeof(rec_buffer) ?
	  ((data_to_recieve = app_size - app_counter)) : (data_to_recieve =
	      sizeof(rec_buffer)))
	;
      status = HAL_UART_Receive (&HOST_USART_HANDLE, (uint8_t*) rec_buffer,
				 sizeof(rec_buffer), HAL_MAX_DELAY);
      if (status != HAL_OK)
	{
#ifdef DEBUG_ENABLED
	  BL_SendMSG (&DEBUG_USART_HANDLE, "\rERROR: Receiving APP Chunk\r\n");
#endif
	  status = HAL_FLASH_Lock ();
	  if (status != HAL_OK)
	    {
#ifdef DEBUG_ENABLED
	      BL_SendMSG (&DEBUG_USART_HANDLE, "\rDebug: Locking failed\r\n");
#endif
	    }
	  return ack;
	}

      ack = Decrypt_RecievedChunk (&aes_ctx, (uint8_t*) rec_buffer,
				   (uint8_t*) decrypted_data);
      for (uint32_t j = 0; j < (data_to_recieve / sizeof(uint32_t)); j++)
	{
	  status = HAL_OK;
	  status = HAL_FLASH_Program (FLASH_TYPEPROGRAM_WORD,
				      download_address + (j * sizeof(uint32_t)),
				      decrypted_data[j]);
	  if (status != HAL_OK)
	    {
#ifdef DEBUG_ENABLED
	      BL_SendMSG (&DEBUG_USART_HANDLE,
			  "\rDebug: Programming failed\r\n");
#endif
	      status = HAL_FLASH_Lock ();

	      if (status != HAL_OK)
		{
#ifdef DEBUG_ENABLED
		  BL_SendMSG (&DEBUG_USART_HANDLE,
	      "\rDebug: Locking failed\r\n");
#endif
		}
	      ack = BL_NACK;
	      return ack;
	    }
	  else
	    {
#ifdef DEBUG_ENABLED
	      BL_SendMSG (&DEBUG_USART_HANDLE,
  		"\rProgramming Chunk Success \r\n");
#endif
	    }
	}
      ack = Accumulate_Sha256Hash (&sha256_ctx, (uint8_t*) decrypted_data,
				   data_to_recieve);
      BL_SendAck (ack);
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "\rDebug app_counter = %lu\r\n",
	  app_counter);
#endif
      download_address += data_to_recieve;
    }
  status = HAL_FLASH_Lock ();
  if (status != HAL_OK)
    {
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "\rDebug: Locking failed\r\n");
#endif
    }
  int var = 0;

  for (int i = 0; i < HASH_SIZE; i += 16)
    {
      ack = Decrypt_RecievedChunk (&aes_ctx, encrypted_hash + i, rec_hash + i);
    }
  if (ack == BL_NACK)
    {
      return ack;

    }
  ack = Get_Calculated_Hash (&sha256_ctx, (uint8_t*) calc_hash);
  End_Updating_Session (&aes_ctx, &sha256_ctx);
  var = memcmp (calc_hash, rec_hash, sizeof(calc_hash));
  if (var == 0)
    {

      ack = BL_ACK;
    }
  else
    {
      ack = BL_NACK;
      BL_SendAck (ack);
      return ack;
    }

  Update_INFO_t update;

  update.update_size = app_size;
  update.updated = 1;
  memcpy (update.hash, calc_hash, HASH_SIZE);
  Set_ValidUpdate (&update);
  BL_SendAck (ack);
#ifdef DEBUG_ENABLED
  BL_SendMSG (&DEBUG_USART_HANDLE, "\rDebug: Firmware Update Success\r\n");
#endif

  return ack;
}

/**
 * @brief  Installs the new application from the update location in Flash memory to the application location.
 * @retval uint8_t: Returns 0 if installation is successful, or 1 if there is an error.
 */
uint8_t
BL_InstallApplication (void)
{
  uint8_t *update_ptr = (uint8_t*) (UPDATE_START_PAGE * (PAGE_SIZE)
      + PAGE0_ADDRESS);
  uint8_t *app_ptr = (uint8_t*) (APP_START_PAGE * (PAGE_SIZE) + PAGE0_ADDRESS);
  BL_INFO_t temp_info;
  uint32_t update_size = (bl_info_ptr->update.update_size);
  uint8_t status = HAL_OK;

  Bootloader_EraseFlash (APP_START_PAGE, APP_MAX_SIZE);

  HAL_FLASH_Unlock (); // unlock the Flash before writing

  for (uint32_t i = 0; i < (update_size / sizeof(uint32_t)); i++)
    {
      status = HAL_FLASH_Program (FLASH_TYPEPROGRAM_WORD,
				  (uint32_t) (app_ptr + (i * sizeof(uint32_t))),
				  (uint32_t) ((uint32_t*) update_ptr)[i]);
      if (status != HAL_OK)
	{
#ifdef DEBUG_ENABLED
	  BL_SendMSG (&DEBUG_USART_HANDLE,
		      "Error while Installing Update to APP location \r\n");
#endif
	  HAL_FLASH_Lock ();  // Lock the Flash after writing
	  return BL_NACK;
	}
    }

  HAL_FLASH_Lock ();  // Lock the Flash after writing

  /* Get Current Information */
  memcpy (&temp_info, bl_info_ptr, sizeof(BL_INFO_t));
  /* update app information */
  temp_info.app.app_size = temp_info.update.update_size;
  temp_info.app.app_validity = 1;
  memcpy (temp_info.app.hash, bl_info_ptr->update.hash, HASH_SIZE);
  temp_info.update.updated = 0;

  BL_WriteAppsInfoToFlash (&temp_info);

  return status;

}

uint8_t
Set_ValidUpdate (Update_INFO_t *update)
{
  BL_INFO_t temp_info =
    { 0 };
  uint8_t updated = bl_info_ptr->update.updated;
  uint8_t app_valid = bl_info_ptr->app.app_validity;
  uint8_t status = BL_ACK;

  /* if it's not first download */
  if ((app_valid & updated) != 0xff)
    {
      /* Get Current APP Information */
      memcpy (temp_info.app.hash, bl_info_ptr->app.hash, sizeof(App_INFO_t));
      temp_info.app.app_size = bl_info_ptr->app.app_size;
      temp_info.app.app_validity = 0;
    }
  /* Update update information */
  memcpy ((uint8_t*) &temp_info.update, update, sizeof(Update_INFO_t));

  BL_WriteAppsInfoToFlash (&temp_info);
  return status;

}
void
BL_JumpToApplication_Wrapper (uint8_t *hostbuffer)
{
  uint8_t starting_page_num = hostbuffer[2];
  if (starting_page_num >= STM32F103C8T6_PAGES_NUM)
    {
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "\rERROR: Invalid Page Number\r\n");
#endif
      return;
    }
  BL_JumpToApplication (starting_page_num);
}

void
BL_JumpToApplication (uint8_t app_starting_page)
{
  uint32_t *pointer_to_page = (uint32_t*) ((uint32_t) PAGE0_ADDRESS
      + (app_starting_page * PAGE_SIZE));
  uint32_t app_stack_pointer = *(uint32_t*) pointer_to_page; // Extract the SP MSP is the first address in vector table
  uint32_t jump_address = *(uint32_t*) ((uint32_t*) pointer_to_page + 1); // The Jump address is the Reset Handler of the Application
  // Function pointer to jump to the application
  typedef void
  (*pFunction) (void);
  pFunction JumpToApplication;

  /* De-initialize all peripherals BL has used */
  BL_DeInit ();

  // Disable interrupts
  __disable_irq ();

  __DSB ();
  __ISB ();

  // Set stack pointer to the application's stack pointer
  __set_MSP (app_stack_pointer);
  // Get the reset handler (second entry in the vector table, offset by 4 bytes)
  JumpToApplication = (pFunction) jump_address;

  // Jump to application
  __enable_irq ();
  JumpToApplication ();
}

static void
Bootloader_EraseFlash_Wrapper (uint8_t *hostbuffer)
{
  uint8_t starting_page = hostbuffer[2];
  uint8_t number_of_pages = hostbuffer[3];
  Bootloader_EraseFlash (starting_page, number_of_pages);
}
static void
Bootloader_EraseFlash (uint8_t starting_page, uint8_t number_of_pages)
{

  FLASH_EraseInitTypeDef erase_init_struct;
  uint32_t page_err = 0;
  HAL_StatusTypeDef status = HAL_OK;
  /* Unlock Flash memory for writing/erasing */
  status = HAL_FLASH_Unlock ();
  if (status != HAL_OK)
    {
      return;
    }
  else
    {
      if ((starting_page == 0)
	  && (starting_page + number_of_pages) == STM32F103C8T6_PAGES_NUM)
	{
	  /* MASS Erase */
	  erase_init_struct.TypeErase = FLASH_TYPEERASE_MASSERASE; /* Type of erase: mass */
	  erase_init_struct.Banks = FLASH_BANK_1;
	}
      else
	{
	  /* Define the page to erase (STM32F103C8T6 has 1 KB per page, adjust page address ) */
	  uint32_t Starting_Page_Address = ((uint32_t) starting_page * 1024)
	      + PAGE0_ADDRESS;
	  // Configure the erase structure
	  erase_init_struct.TypeErase = FLASH_TYPEERASE_PAGES; /* Type of erase: pages */
	  erase_init_struct.PageAddress = Starting_Page_Address; /*  Start page address (base flash address) */
	  erase_init_struct.NbPages = number_of_pages;
	  erase_init_struct.Banks = FLASH_BANK_1;/* Number of pages to erase */
	}
      // Erase the specified page
      if (HAL_FLASHEx_Erase (&erase_init_struct, &page_err) != HAL_OK)
	{
#ifdef DEBUG_ENABLED
	  BL_SendMSG (&DEBUG_USART_HANDLE, "\rError: in Erasing Flash\r\n");
	  BL_SendMSG (&DEBUG_USART_HANDLE, "\rpage err: %d\r\n", page_err);
    #endif
	  status = HAL_FLASH_Lock ();
	  return;
	}
      else
	{
#ifdef DEBUG_ENABLED
	  BL_SendMSG (&DEBUG_USART_HANDLE, "\rErase Success \r\n");
#endif
	}
      // Lock the Flash memory to prevent unwanted access
      status = HAL_FLASH_Lock ();
    }
}
static uint8_t
Check_Packet_Validity (uint8_t *hostbuffer)
{

  uint8_t crc_status = CRC_VERIFY_FAIL;
  uint8_t data_count = hostbuffer[0] - BL_CRC_SIZE + 1;
  uint32_t crc_buff = 0;
  uint32_t crc_rec = 0;

  /* Calculate CRCs for received buffer */
  crc_buff = CRC32_Calculate (&hcrc, hostbuffer, data_count);
  crc_rec = *(uint32_t*) (((uint8_t*) hostbuffer + data_count));
  CRC32_ResetCRC (&hcrc);
#ifdef DEBUG_ENABLED
	BL_SendMSG(&DEBUG_USART_HANDLE,"\rDebug: Received CRC is:0x%x\n",crc_rec) ;
	BL_SendMSG(&DEBUG_USART_HANDLE,"\rDebug: Calculated CRC is:0x%x\n",crc_buff) ;
	#endif
  if (crc_buff != crc_rec)
    {
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "\rError: CRC Check Fail \r\n");
#endif
      crc_status = CRC_VERIFY_FAIL;

    }
  else
    {
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE, "\rDebug: CRC Check Pass \r\n");
#endif
      crc_status = CRC_VERIFY_PASS;
    }
  return crc_status;
}

/* ======================= Interfaces Definitions ==============================*/
/* Initialize BL Hardware Modules ex(Communication Channel) */
void
BL_Init ()
{

  CRC32_Init (&hcrc);
}

/* BL Send Debug message */
void
BL_SendMSG (UART_HandleTypeDef *huart, char *format, ...)
{
  char msg[200] =
    { 0 };
  va_list args;
  va_start(args, format);
  vsprintf (msg, format, args);

  if (huart == &HOST_USART_HANDLE)
    {
#if  BL_HOST_COM_METHOD == BL_ENABLE_UART

      HAL_UART_Transmit (huart, (uint8_t*) msg, strlen (msg) + 1,
      HAL_MAX_DELAY);
      HAL_Delay (20);

#elif BL_HOST_COM_METHOD == BL_ENABLE_SPI

	#elif BL_HOST_COM_METHOD == BL_ENABLE_CAN
	#endif
    }
#ifdef DEBUG_ENABLED
  else if (huart == &DEBUG_USART_HANDLE)
    {

#if  BL_DEBUG_METHOD == BL_ENABLE_UART

					HAL_UART_Transmit(huart,(uint8_t*) msg, strlen(msg)+1, HAL_MAX_DELAY) ;
					HAL_Delay(20) ;

			#elif BL_DEBUG_METHOD == BL_ENABLE_SPI

			#elif BL_DEBUG_METHOD == BL_ENABLE_CAN

			#endif

    }
#endif

  va_end(args);
}

static uint8_t
Start_Updating_Session (mbedtls_aes_context *aes_ctx,
			mbedtls_sha256_context *sha256_ctx)
{
  uint8_t ret = BL_NACK;

  mbedtls_aes_init (aes_ctx);
  mbedtls_sha256_init (sha256_ctx);
  ret = mbedtls_aes_setkey_dec (aes_ctx, key, sizeof(key) * 8);

  ret = mbedtls_sha256_starts_ret (sha256_ctx, 0);
  if (ret != 0)
    {
#ifdef DEBUG_ENABLED
			BL_SendMSG(&DEBUG_USART_HANDLE, "Error: Starting Hash Function\n") ;
		#endif
      ret = BL_NACK;
    }
  else
    {
      ret = BL_ACK;
    }
  return ret;
}

/**
 * @brief  Calculates and finalizes the SHA-256 hash.
 * @param  sha256_ctx: Pointer to the SHA-256 context.
 * @param  calc_hash: Pointer to store the calculated hash.
 * @retval uint8_t: BL_ACK on success, BL_NACK on failure.
 */

static uint8_t
Get_Calculated_Hash (mbedtls_sha256_context *sha256_ctx, uint8_t *calc_hash)
{
  int ret;
  ret = mbedtls_sha256_finish_ret (sha256_ctx, calc_hash);
  if (ret != 0)
    {
#ifdef DEBUG_ENABLED
		BL_SendMSG(&DEBUG_USART_HANDLE, "Error: Finishing Hash Function\n") ;
	#endif
      ret = BL_NACK;
    }
  else
    {
      ret = BL_ACK;
    }
  return ret;
}
/**
 * @brief  Ends the current update session by freeing the AES and SHA-256 contexts.
 * @param  aes_ctx: Pointer to the AES context.
 * @param  sha256_ctx: Pointer to the SHA-256 context.
 * @retval uint8_t: Always returns BL_ACK.
 */
static uint8_t
End_Updating_Session (mbedtls_aes_context *aes_ctx,
		      mbedtls_sha256_context *sha256_ctx)
{
  uint8_t ret = BL_ACK;

  mbedtls_aes_free (aes_ctx);
  mbedtls_sha256_free (sha256_ctx);
  return ret;
}

/**
 * @brief  Reads the encrypted hash value from the host via UART.
 * @param  encrypted: Pointer to store the received encrypted hash value.
 */

static void
Read_EncryptedHashValue (uint8_t *encrypted)
{

  HAL_UART_Receive (&HOST_USART_HANDLE, encrypted, HASH_SIZE, HAL_MAX_DELAY);
}

/**
 * @brief  Decrypts the received chunk using AES in ECB mode.
 * @param  ctx: Pointer to the AES context.
 * @param  enc: Pointer to the encrypted chunk.
 * @param  dec: Pointer to store the decrypted chunk.
 * @retval uint8_t: BL_ACK on success, otherwise prints an error if DEBUG is enabled.
 */

static uint8_t
Decrypt_RecievedChunk (mbedtls_aes_context *ctx, uint8_t *enc, uint8_t *dec)
{
  int ret = BL_ACK;
  ret = mbedtls_aes_crypt_ecb (ctx, MBEDTLS_AES_DECRYPT, enc, dec);
  if (ret != 0)
    {
#ifdef DEBUG_ENABLED
      BL_SendMSG (&DEBUG_USART_HANDLE,
		  "Error decryption the Chunk with err = %d\r\n", ret);
#endif
    }
  ret = BL_ACK;
  return ret;

}

/**
 * @brief  Generates a random number using the system tick and stores it in the output.
 * @param  output: Pointer to store the generated random number (16 bytes).
 */

void
generate_random_number (uint8_t *output)
{
  uint32_t tick_value;
  for (int i = 0; i < 4; i++)
    {

      /*  Get system tick value (32-bit) */
      tick_value = HAL_GetTick ();
      memcpy (&output[i * 4], &tick_value, sizeof(tick_value));
      HAL_Delay (10);  // delay to make variations
    }

}

/**
 * @brief  Verifies if the provided address and length are within the valid Flash memory range.
 * @param  address: Starting address in Flash memory.
 * @param  len: Length of the memory to access.
 * @retval uint8_t: 1 if valid, 0 if invalid.
 */
static uint8_t
IS_VALID_ADDRESS (uint32_t address, size_t len)
{
  uint8_t valid = 0;

  if (address < FLASH_START)
    {

      valid = 0;
    }
  else if (address > FLASH_END)
    {
      valid = 0;
    }
  else if ((address + len) > FLASH_END)
    {

      valid = 0;
    }
  else
    {
      valid = 1;
    }
  return valid;
}

/**
 * @brief  Wrapper for the memory read operation. Extracts address and length from the host buffer.
 * @param  hostbuffer: Buffer containing the address and length information.
 */

void
Bootloader_MemRead_Wrapper (uint8_t *hostbuffer)
{
  uint32_t address = (host_buffer[2] << 24) | (host_buffer[3] << 16)
      | (host_buffer[4] << 8) | (host_buffer[5]);
  size_t len = (host_buffer[6] << 24) | (host_buffer[7] << 16)
      | (host_buffer[8] << 8) | (host_buffer[9]);
  Bootloader_MemRead (address, len);
}
/**
 * @brief  Reads data from the specified memory address after authorization.
 * @param  address: Starting address to read from.
 * @param  len: Number of bytes to read.
 */
void
Bootloader_MemRead (uint32_t address, size_t len)
{

  uint8_t seed[16] =
    { 0 };
  uint8_t encrypted_seed[16] =
    { 0 };
  uint8_t decrypted_seed[16] =
    { 0 };
  uint8_t status = 1;
  /* verify that the address in flash */

  status = IS_VALID_ADDRESS (address, len);
  if (status == 1)
    {
      /* initalize the encryption context */
      mbedtls_aes_context aes;
      mbedtls_aes_context aes_ctx;
      mbedtls_aes_init (&aes_ctx);

      mbedtls_aes_setkey_dec (&aes_ctx, read_key, 16 * 8);

      /* Generate Seed */
      generate_random_number (seed);
      /* Send Seed */
      HAL_Delay (10);
      HAL_UART_Transmit (&HOST_USART_HANDLE, (uint8_t*) seed, sizeof(seed),
      HAL_MAX_DELAY);
      /* Wait the Encrypted */
      HAL_Delay (10);
      __HAL_UART_FLUSH_DRREGISTER(&HOST_USART_HANDLE); // Clear UART data register
      HAL_UART_Receive (&HOST_USART_HANDLE, (uint8_t*) encrypted_seed,
			sizeof(seed), HAL_MAX_DELAY);
      /* decrypt the recieved enc seed */
      mbedtls_aes_crypt_ecb (&aes_ctx, MBEDTLS_AES_DECRYPT, encrypted_seed,
			     decrypted_seed);
      HAL_Delay (10);
      HAL_UART_Transmit (&HOST_USART_HANDLE, (uint8_t*) encrypted_seed,
			 sizeof(seed), HAL_MAX_DELAY);
      /* Check Authorization */
      HAL_Delay (10);
      status = memcmp (decrypted_seed, seed, sizeof(seed));
      if (status == 0)
	{
	  status = BL_ACK;
	  HAL_UART_Transmit (&HOST_USART_HANDLE, (uint8_t*) &status, 1,
	  HAL_MAX_DELAY);
	  /* Return Bytes */
	  Authorized_ReadMem (address, len);
	}
      else
	{

	  status = BL_NACK;
	  HAL_UART_Transmit (&HOST_USART_HANDLE, (uint8_t*) &status, 1,
	  HAL_MAX_DELAY);
	}
      mbedtls_aes_free (&aes);
    }
  else
    {
      status = BL_NACK;
      HAL_UART_Transmit (&HOST_USART_HANDLE, (uint8_t*) &status, 1,
      HAL_MAX_DELAY);
    }

}

/**
 * @brief  Sends data from the  memory address to the authorized host via UART.
 * @param  address: Starting address to read from.
 * @param  len: Number of bytes to send.
 */
static void
Authorized_ReadMem (uint32_t address, size_t len)
{
  for (uint32_t i = 0; i < len; i++)
    {
      HAL_Delay (50);
      HAL_UART_Transmit (&HOST_USART_HANDLE, &(((uint8_t*) address)[i]), 1,
      HAL_MAX_DELAY);
    }
}

/**
 * @brief  Accumulates the SHA-256 hash by updating it with the received chunk.
 * @param  sha256_ctx: Pointer to the SHA-256 context.
 * @param  chunk: Pointer to the received chunk.
 * @param  chunck_size: Size of the chunk to update the hash with.
 * @retval uint8_t: BL_ACK on success, BL_NACK on failure.
 */

static uint8_t
Accumulate_Sha256Hash (mbedtls_sha256_context *sha256_ctx, uint8_t *chunk,
		       uint32_t chunck_size)
{
  uint8_t ret = BL_ACK;
  ret = mbedtls_sha256_update_ret (sha256_ctx, chunk, chunck_size);
  if (ret != 0)
    {
#ifdef DEBUG_ENABLED
		BL_SendMSG(&DEBUG_USART_HANDLE, "Error: Updating Hash Function\n") ;
	#endif
      ret = BL_NACK;
    }
  else
    {
      ret = BL_ACK;
    }
  return ret;
}

