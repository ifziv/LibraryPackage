//
//  HighStatusConversion.h
//  LibraryPackage
//
//  Created by ifziv on 14-5-23.
//  Copyright (c) 2014年 com.mhealth365. All rights reserved.
//

/*
 * convert big endian to little endian in C
 * 在iOS与Android交互的过程（主要是读写文件）中，由于字节序不同（高低位转换），
 * 导致存在数据的差异性，为保证一致性，统一由iOS端进行处理后写入文件。同时在iOS端读文件的时候，也需要先转换字节序然后使用。
 * 此问题主要集中在读写文件时数据类型为 UInt8、UInt16、UInt32、UInt64、SInt8、SInt16、..、short、等情况下使用。
 *
 * @e.g short packetLenth = 28;
 *      short age = swap_int16(packetLenth);
 *      NSLog(@"%hd", age);   //log:7168
 *      short unage = swap_uint16(age);
 *      NSLog(@"%hd", unage); //log:28
 *
 *  Upload Date: 2017/01/06
 */

#import <Foundation/Foundation.h>

@interface HighStatusConversion : NSObject

int16_t swap_int16( int16_t val);

uint16_t swap_uint16( uint16_t val);

int32_t swap_int32( int32_t val);

uint32_t swap_uint32( uint32_t val);

int64_t swap_int64( int64_t val);

uint64_t swap_uint64( uint64_t val);

//////////////////////////////////////
//取高位
+(Byte) getHighByte:(int) byte;

//取低位
+(Byte) getLowByte:(int) byte;


@end
