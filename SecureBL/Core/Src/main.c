/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2024 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
#include "crc.h"
#include "bootloader.h"
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */
/* USER CODE BEGIN PM */
CRC_Handle_t hcrc;
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart1;
UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */
extern BL_INFO_t *bl_info_ptr;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void
SystemClock_Config (void);
static void
MX_GPIO_Init (void);
static void
MX_USART1_UART_Init (void);
static void
MX_USART2_UART_Init (void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
/* USER CODE END 0 */

/**
 * @brief  The application entry point.
 * @retval int
 */

int
main (void)
{

  /* USER CODE BEGIN 1 */
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init ();

  /* USER CODE BEGIN Init */
  BL_Init ();
  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config ();
  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init ();
  MX_USART1_UART_Init ();
  MX_USART2_UART_Init ();
  /* USER CODE BEGIN 2 */
  hcrc.crc_initval = DEFAULT_INIT_VAL;
  hcrc.crc_poly = DEFAULT_POLY_VAL;

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */


  uint32_t wait_time = 10000;
  uint8_t status = 0;
  uint32_t start_time = HAL_GetTick ();
  uint8_t stuck_on_menu = 0;
  BL_SendAck (BL_ACK);
  while (1)
    {

      if (((HAL_GetTick () - start_time) > wait_time) && (stuck_on_menu == 0))
	{
	  /* verify app */
	  status = BL_VerifyApplication ();
	  switch (status)
	    {

	    case APP_VERIFIED:
#ifdef DEBUG_ENABLED
	      BL_SendMSG(&DEBUG_USART_HANDLE,"\r Verified: Jumping to APP :D \r\n") ;
#endif
	      BL_JumpToApplication (APP_START_PAGE);
	      break;

	    case APP_NOT_VERIFIED:
#ifdef DEBUG_ENABLED
	      BL_SendMSG(&DEBUG_USART_HANDLE,"\rDEBUG: APPLICATION Not Verified Try Booting  or Call Abokhalil @moahmed1907@gmail.com \r\n") ;
#endif
	    case UPDATE_FOUND:
#ifdef DEBUG_ENABLED
	      BL_SendMSG(&DEBUG_USART_HANDLE,"\rDEBUG : Update Found\r\n") ;
#endif
	      BL_INFO_t temp_info;
	      Get_CurrentBL_Info (&temp_info);
	      BL_InstallApplication ();
	      status = BL_VerifyApplication ();
	      if (status == APP_VERIFIED)
		{
		  /* Jump to updated app */
		  BL_JumpToApplication (APP_START_PAGE);
		}
	      break;
	    case NOR_APP_NOT_UPDATE_FOUND:
	      stuck_on_menu = 1;
#ifdef DEBUG_ENABLED
	      BL_SendMSG(&DEBUG_USART_HANDLE,"\rDEBUG :  The Flash only Carry the Bootloader \r\n") ;
#endif
	      break;
	    case VERIFICATION_ERROR:
#ifdef DEBUG_ENABLED
	      BL_SendMSG(&DEBUG_USART_HANDLE,"\rDEBUG :  Verification Error Try again \r\n") ;
#endif
	    default:
#ifdef DEBUG_ENABLED
	      BL_SendMSG(&DEBUG_USART_HANDLE,"\rInvalid Return\r\n") ;
#endif
	    }
	}
      else
	{
	  /* Bootloader Menu will appear Just for wait_time miliseconds e.g 10000 */
	  if (BL_FetchUARTCommand () == BL_NACK)
	    {
#ifdef DEBUG_ENABLED
	      BL_SendMSG(&DEBUG_USART_HANDLE,"ERROR: BL_FetchUsartCMD() returned BL_NACK\r\n") ;
#endif
	    }
	  else
	    {
		/* Reset the Counter */
	      start_time = HAL_GetTick() ;
#ifdef DEBUG_ENABLED
		 	     BL_SendMSG(&DEBUG_USART_HANDLE,"ERROR: BL_FetchUsartCMD() returned BL_NACK\r\n") ;
#endif
	    }
	  /* USER CODE END WHILE */

	  /* USER CODE BEGIN 3 */
	}
      /* USER CODE END 3 */
    }
}
/**
 * @brief System Clock Configuration
 * @retval None
 */
void
SystemClock_Config (void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct =
    { 0 };
  RCC_ClkInitTypeDef RCC_ClkInitStruct =
    { 0 };

  /** Initializes the RCC Oscillators according to the specified parameters
   * in the RCC_OscInitTypeDef structure.
   */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig (&RCC_OscInitStruct) != HAL_OK)
    {
      Error_Handler ();
    }

  /** Initializes the CPU, AHB and APB buses clocks
   */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
      | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig (&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
    {
      Error_Handler ();
    }
}

/**
 * @brief USART1 Initialization Function
 * @param None
 * @retval None
 */
static void
MX_USART1_UART_Init (void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init (&huart1) != HAL_OK)
    {
      Error_Handler ();
    }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
 * @brief USART2 Initialization Function
 * @param None
 * @retval None
 */
static void
MX_USART2_UART_Init (void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init (&huart2) != HAL_OK)
    {
      Error_Handler ();
    }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
 * @brief GPIO Initialization Function
 * @param None
 * @retval None
 */
static void
MX_GPIO_Init (void)
{
  /* USER CODE BEGIN MX_GPIO_Init_1 */
  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /* USER CODE BEGIN MX_GPIO_Init_2 */
  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
 * @brief  This function is executed in case of error occurrence.
 * @retval None
 */
void
Error_Handler (void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq ();
  while (1)
    {
    }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
