/*
 * dev.h
 *
 *  Created on: Jan 27, 2021
 *      Author: ryan
 */

#ifndef DEV_DEVMANAGER_H_
#define DEV_DEVMANAGER_H_

#include <stdint.h>
#include "FreeRTOS.h"
#include "DevTypes.h"

#define DEV_CMD_DIR_TO 0x0
#define DEV_CMD_DIR_FROM 0x1
#define DEV_CMD_DIR_TOFROM 0x10
#define DEV_CMD_DIR_OFFSET 30

#define DEV_CMD_POL_SYNC 0x0
#define DEV_CMD_POL_ASYNC 0x1
#define DEV_CMD_POL_OFFSET 29

#define DEV_CMD_TO_SYNC
#define DEV_CMD_FROM_SYNC
#define DEV_CMD_TOFROM_SYNC

#define DEV_CMD_TO_ASYNC
#define DEV_CMD_FROM_ASYNC
#define DEV_CMD_TOFROM_ASYNC

DevID_t xDevLink( const char * DevName, size_t LocalChannelDepth);
BaseType_t xDevUnlink( const char * DevName );
BaseType_t xDevOpen( const char * DevName );
BaseType_t xDevClose( int ConnectionID );
BaseType_t xDevCtrl( int ConnectionID, DevMsg_t Msg, DevReply_t Reply );


#endif /* DEV_DEVMANAGER_H_ */
