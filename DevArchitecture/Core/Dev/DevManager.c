/*
 * dev.c
 *
 *  Created on: Jan 27, 2021
 *      Author: ryan
 */

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "DevManager.h"

/* DEV_ID_LIST_LEN = DEV_MAX_LINKS / 32 bits */
#define DEV_MAX_LINKS 64
#define DEV_ID_LIST_LEN 2

#define DEV_NAME_MAX_LEN 64
#define DEV_MAX_CHANNEL_DEPTH 20
#define DEV_MIN_CHANNEL_DEPTH 1

#define clip_min_val(x, min) ( x < min ? min : x )
#define clip_max_val(x, max) ( x > max ? max : x )

/* Private function forward declarations */
bool CheckDevLinked( const char * DevName );
void FreeDevInfo( DevInfo_t *DevInfo );
void FreeDevConnectionList( DevConnection_t *ConnectionList );

/* Private global data structure definitions */
DevInfo_t *LinkedDevices = NULL;
uint32_t DevLinkedIDList[DEV_ID_LIST_LEN]; /* Bit map of linked IDs */

bool CheckDevLinked( const char * DevName )
{
DevInfo_t *CurrLink = LinkedDevices;
	while ( CurrLink )
	{
		if ( !strcmp( DevName, CurrLink->DevName ) )
		{
			return true;
		}
		CurrLink = CurrLink->NextDev;
	}
	return false;
}


//TODO
void FreeDevConnectionList( DevConnection_t *ConnectionList )
{

}

void FreeDevInfo( DevInfo_t *DevInfo )
{
	if ( DevInfo->DevName != NULL )
	{
		free( DevInfo->DevName );
	}
	if ( DevInfo->ConnectionList != NULL )
	{
		FreeDevConnectionList( DevInfo->ConnectionList );
	}
	if ( DevInfo->LocalChannel != NULL )
	{
		vQueueDelete( DevInfo->LocalChannel );
	}
}

//TODO
void FreeDevID( DevID_t )
{

}

//TODO
DevID_t FindFreeDevID( void )
{

}

//typedef struct DevInfo {
//	char *DevName;
//	DevChannel_t LocalChannel;
//	size_t LocalChannelLen;
//	DevID_t BaseID;
//	DevConnection_t *ConnectionList;
//	struct DevInfo *NextDev;
//} DevInfo_t;

int xDevLink( const char * DevName, size_t LocalChannelDepth)
{
DevInfo_t *NewDev = NULL;
size_t DevNameLen;

	/* Ensure device is not already linked */
	if ( CheckDevLinked( DevName ) )
	{
		return DEV_ERROR_EXISTING_LINK;
	}

	/* Check dev name against maximum length */
	if ( ( DevName == NULL ) || ( ( DevNameLen = strlen( DevName ) ) > DEV_NAME_MAX_LEN ) )
	{
		return DEV_ERROR_NAME_LEN;
	}

	/* Clip channel depth to acceptable range */
	LocalChannelDepth = clip_min_val(LocalChannelDepth, DEV_MIN_CHANNEL_DEPTH);
	LocalChannelDepth = clip_max_val(LocalChannelDepth, DEV_MAX_CHANNEL_DEPTH);

	/* Create device info structure */
	NewDev = ( DevInfo_t * )malloc( sizeof( DevInfo_t ) );
	if ( NewDev == NULL )
	{
		return DEV_ERROR_NO_MEM;
	}
	NewDev->DevName = ( char * )malloc( DevNameLen + 1 );
	if ( NewDev->DevName == NULL )
	{
		FreeDevInfo( NewDev );
		return DEV_ERROR_NO_MEN;
	}
	if ( ( NewDev->LocalChannel = ( DevChannel_t )xQueueCreate( LocalChannelDepth, sizeof( DevMsg_t ) ) ) < 0 )
	{
		FreeDevInfo( NewDev );
		return DEV_ERROR_NO_MEM;
	}
	NewDev->LocalChannelLen = LocalChannelDepth;

}

BaseType_t xDevUnlink( const char * DevName )
{

}

BaseType_t xDevOpen( const char * DevName )
{

}

BaseType_t xDevClose( int ConnectionID )
{

}

BaseType_t xDevCtrl( int ConnectionID, DevMsg_t Msg, DevReply_t Reply )
{

}
