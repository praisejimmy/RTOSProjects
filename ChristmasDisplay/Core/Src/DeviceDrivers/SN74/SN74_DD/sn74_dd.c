/*
 * sn74hc595_dd.c
 *
 *  Created on: Dec 21, 2020
 *      Author: ryan
 */

#include <stdio.h>
#include <stdlib.h>
#include "stm32f3xx_hal.h"
#include "sn74_dd.h"

#define SN74_SPI_INTERFACE SPI2
#define SN74_RCLK_PORT GPIOB
#define SN74_RCLK_PIN GPIO_PIN_14
#define SN74_SRCLR_PORT GPIOB
#define SN74_SRCLR_PIN GPIO_PIN_6
#define SN74_OE_PORT GPIOC
#define SN74_OE_PIN GPIO_PIN_7
#define SN74_MSG_QUEUE_LEN 5

void SN74Task( void *pvParameters );

TaskHandle_t xSN74TaskHandle = NULL;
QueueHandle_t xSN74QueueHandle = NULL;
SPI_HandleTypeDef sn74_spi2;

static BaseType_t HardwareInit( void )
{
BaseType_t xRet;
GPIO_InitTypeDef GPIO_InitStruct = {0};

	sn74_spi2.Instance = SN74_SPI_INTERFACE;
	sn74_spi2.Init.Mode = SPI_MODE_MASTER;
	sn74_spi2.Init.Direction = SPI_DIRECTION_2LINES;
	sn74_spi2.Init.DataSize = SPI_DATASIZE_8BIT;
	sn74_spi2.Init.CLKPolarity = SPI_POLARITY_LOW;
	sn74_spi2.Init.CLKPhase = SPI_PHASE_1EDGE;
	sn74_spi2.Init.NSS = SPI_NSS_SOFT;
	sn74_spi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_4;
	sn74_spi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
	sn74_spi2.Init.TIMode = SPI_TIMODE_DISABLE;
	sn74_spi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
	sn74_spi2.Init.CRCPolynomial = 7;
	sn74_spi2.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
	sn74_spi2.Init.NSSPMode = SPI_NSS_PULSE_ENABLE;
	xRet = HAL_SPI_Init( &sn74_spi2 );
	if ( xRet != HAL_OK )
	{
		return xRet;
	}

	__HAL_RCC_GPIOB_CLK_ENABLE();
	__HAL_RCC_GPIOC_CLK_ENABLE();

	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(SN74_RCLK_PORT, SN74_RCLK_PIN|SN74_SRCLR_PIN, GPIO_PIN_RESET);

	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(SN74_OE_PORT, SN74_OE_PIN, GPIO_PIN_RESET);

	/*Configure GPIO pins : PB14 PB6 */
	GPIO_InitStruct.Pin = SN74_RCLK_PIN|SN74_SRCLR_PIN;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(SN74_RCLK_PORT, &GPIO_InitStruct);

	/*Configure GPIO pin : PC7 */
	GPIO_InitStruct.Pin = SN74_OE_PIN;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(SN74_OE_PORT, &GPIO_InitStruct);

	return HAL_OK;
}

static BaseType_t DriverInit( void )
{
	if ( xSN74TaskHandle != NULL )
	{
		return pdFREERTOS_ERRNO_EADDRINUSE; /* Device already initialized */
	}
	if ( ( xSN74QueueHandle = xQueueCreate( SN74_MSG_QUEUE_LEN, sizeof(SN74Msg_t) ) ) < 0 )
	{
		return errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
	}
	if ( xTaskCreate( SN74Task, "sn74_dd",  256, NULL, tskIDLE_PRIORITY, &xSN74TaskHandle ) < 0 )
	{
		vQueueDelete( xSN74QueueHandle );
		return errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
	}
	return pdFREERTOS_ERRNO_NONE;
}

static void IO_SN74PowerOff( void )
{
	HAL_GPIO_WritePin(SN74_SRCLR_PORT, SN74_SRCLR_PIN, GPIO_PIN_RESET);
	vTaskDelay(1 * portTICK_PERIOD_MS);
	HAL_GPIO_WritePin(SN74_SRCLR_PORT, SN74_SRCLR_PIN, GPIO_PIN_SET);
	HAL_GPIO_WritePin(SN74_OE_PORT, SN74_OE_PIN, GPIO_PIN_SET);
	vTaskDelay(1 * portTICK_PERIOD_MS);
}

static void IO_SN74PowerOn( void )
{
	HAL_GPIO_WritePin(SN74_SRCLR_PORT, SN74_SRCLR_PIN, GPIO_PIN_RESET);
	vTaskDelay(1 * portTICK_PERIOD_MS);
	HAL_GPIO_WritePin(SN74_SRCLR_PORT, SN74_SRCLR_PIN, GPIO_PIN_SET);
	HAL_GPIO_WritePin(SN74_OE_PORT, SN74_OE_PIN, GPIO_PIN_RESET);
	vTaskDelay(1 * portTICK_PERIOD_MS);
}

static void IO_SN74Write( uint8_t pattern )
{
	HAL_SPI_Transmit( &sn74_spi2, &pattern, sizeof(uint8_t), 10 );
	vTaskDelay(1 * portTICK_PERIOD_MS);
	HAL_GPIO_WritePin(SN74_RCLK_PORT, SN74_RCLK_PIN, GPIO_PIN_SET);
	vTaskDelay(1 * portTICK_PERIOD_MS);
	HAL_GPIO_WritePin(SN74_RCLK_PORT, SN74_RCLK_PIN, GPIO_PIN_RESET);
	vTaskDelay(1 * portTICK_PERIOD_MS);
}

BaseType_t xRunSN74( void )
{
BaseType_t xRet;
	if ( ( xRet = HardwareInit() ) != HAL_OK )
	{
		return xRet;
	}
	if ( ( xRet = DriverInit() ) != pdFREERTOS_ERRNO_NONE )
	{
		HAL_SPI_DeInit(&sn74_spi2);
		return xRet;
	}
	return pdFREERTOS_ERRNO_NONE;
}

void SN74Task( void *pvParameters )
{
SN74Msg_t RecvMsg;
uint8_t DevOnStatus = pdFALSE;
	IO_SN74PowerOff();
	while ( 1 )
	{
		if ( xQueueReceive( xSN74QueueHandle, &RecvMsg, portMAX_DELAY ) )
		{
			switch ( RecvMsg.cmd )
			{
			case eSN74PowerOn:
				IO_SN74PowerOn();
				DevOnStatus = pdTRUE;
				break;

			case eSN74PowerOff:
				IO_SN74PowerOff();
				DevOnStatus = pdFALSE;
				break;

			case eSN74Write:
				if ( DevOnStatus )
				{
					IO_SN74Write( RecvMsg.data );
				}
				break;

			default:
				break;
			}
		}
	}
}

/*
 * Exposed IO command
 */
BaseType_t xSN74Ctrl( SN74Msg_t *msg )
{
	if ( xSN74TaskHandle == NULL ) {
		return errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
	}
	return xQueueSend( xSN74QueueHandle, msg, (TickType_t) 0 );
}
