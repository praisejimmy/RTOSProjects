/*
 * sn74_api.h
 *
 *  Created on: Dec 21, 2020
 *      Author: ryan
 */

#ifndef SRC_API_SN74_API_H_
#define SRC_API_SN74_API_H_

#include "FreeRTOS.h"

BaseType_t SN74PowerOn( void );
BaseType_t SN74PowerOff( void);
BaseType_t SN74Write( uint8_t pattern );

#endif /* SRC_API_SN74_API_H_ */
