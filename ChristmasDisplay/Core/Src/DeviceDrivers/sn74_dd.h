/*
 * sn74hc595_dd.h
 *
 *  Created on: Dec 21, 2020
 *      Author: ryan
 */

#ifndef SRC_DEVICEDRIVERS_SN74_DD_H_
#define SRC_DEVICEDRIVERS_SN74_DD_H_

#include <stdint.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

typedef enum SN74CommandType
{
	eSN74PowerOn,
	eSN74PowerOff,
	eSN74Write
} SN74Cmd_e;

typedef struct SN74Message
{
	SN74Cmd_e cmd;
	uint8_t data;
} SN74Msg_t;

BaseType_t xRunSN74( void );
BaseType_t xSN74Ctrl( SN74Msg_t *msg );

#endif /* SRC_DEVICEDRIVERS_SN74_DD_H_ */
