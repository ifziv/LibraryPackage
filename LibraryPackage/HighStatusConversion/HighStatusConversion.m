//
//  HighStatusConversion.m
//  LibraryPackage
//
//  Created by ifziv on 14-5-23.
//  Copyright (c) 2014年 com.mhealth365. All rights reserved.
//

#import "HighStatusConversion.h"

@implementation HighStatusConversion

//! Byte swap short
int16_t swap_int16( int16_t val )
{
    return (val << 8) | ((val >> 8) & 0xFF);
}

//! Byte swap unsigned short
uint16_t swap_uint16( uint16_t val )
{
    return (val << 8) | (val >> 8 );
}

//! Byte swap int
int32_t swap_int32( int32_t val )
{
    val = ((val << 8) & 0xFF00FF00) | ((val >> 8) & 0xFF00FF );
    return (val << 16) | ((val >> 16) & 0xFFFF);
}

//! Byte swap unsigned int
uint32_t swap_uint32( uint32_t val )
{
    val = ((val << 8) & 0xFF00FF00 ) | ((val >> 8) & 0xFF00FF );
    return (val << 16) | (val >> 16);
}

int64_t swap_int64( int64_t val )
{
    val = ((val << 8) & 0xFF00FF00FF00FF00ULL ) | ((val >> 8) & 0x00FF00FF00FF00FFULL );
    val = ((val << 16) & 0xFFFF0000FFFF0000ULL ) | ((val >> 16) & 0x0000FFFF0000FFFFULL );
    val = (val << 32) | ((val >> 32) & 0xFFFFFFFFULL);
    return val;
}

uint64_t swap_uint64( uint64_t val )
{
    val = ((val << 8) & 0xFF00FF00FF00FF00ULL ) | ((val >> 8) & 0x00FF00FF00FF00FFULL );
    val = ((val << 16) & 0xFFFF0000FFFF0000ULL ) | ((val >> 16) & 0x0000FFFF0000FFFFULL );
    val = (val << 32) | (val >> 32);
    return val;
}

////////////////////////////////////////////
//取一个 int类型 高位
+(Byte) getHighByte:(int) byte
{
    Byte val = (byte >> 8) & 0xFF;
    
    return val;
}

//取一个 int类型 低位
+(Byte) getLowByte:(int) byte
{
    Byte val = byte & 0xFF;
    
    return val;
}

@end
