/*
 * sn74hc595_api.c
 *
 *  Created on: Dec 21, 2020
 *      Author: ryan
 */

#include <stdlib.h>
#include <stdio.h>
#include "sn74_api.h"
#include "sn74_dd.h"

BaseType_t SN74PowerOn( void )
{
	SN74Msg_t msg;
	msg.cmd = eSN74PowerOn;
	return xSN74Ctrl( &msg );
}

BaseType_t SN74PowerOff( void)
{
	SN74Msg_t msg;
	msg.cmd = eSN74PowerOff;
	return xSN74Ctrl( &msg );
}

BaseType_t SN74Write( uint8_t pattern )
{
	SN74Msg_t msg;
	msg.cmd = eSN74Write;
	msg.data = pattern;
	return xSN74Ctrl( &msg );
}

