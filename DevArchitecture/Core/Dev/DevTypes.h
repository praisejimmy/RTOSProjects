/*
 * DevTypes.h
 *
 *  Created on: Jan 28, 2021
 *      Author: ryan
 */

#ifndef DEV_DEVTYPES_H_
#define DEV_DEVTYPES_H_

#include "queue.h"

typedef enum {
	DEV_ERROR_NONE = 0,
	DEV_ERROR_GENERIC = -1,
	DEV_ERROR_EXISTING_LINK = -2,
	DEV_ERROR_NAME_LEN = -3,
	DEV_ERROR_NO_MEM = -4
} DevErrno_t;

typedef int DevID_t;

typedef QueueHandle_t DevChannel_t;

typedef uint32_t CommandID_t;

typedef struct {
	CommandID_t Cmd;
	void *Data;
	size_t DataLen;
	DevChannel_t ReturnPath;
} DevMsg_t;

typedef struct {
	int Rc;
	void *Data;
	size_t DataLen;
} DevReply_t;

typedef struct DevConn {
	int ConnectionID;
	DevChannel_t RemoteChannel;
	struct DevConn *NextConnection;
} DevConnection_t;

typedef struct DevInfo {
	char *DevName;
	DevChannel_t LocalChannel;
	size_t LocalChannelLen;
	DevID_t DID;
	DevConnection_t *ConnectionList;
	struct DevInfo *NextDev;
} DevInfo_t;

#endif /* DEV_DEVTYPES_H_ */
