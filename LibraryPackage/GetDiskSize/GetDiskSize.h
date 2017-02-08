//
//  GetDiskSize.h
//  LibraryPackage
//
//  Created by ifziv on 14-5-23.
//  Copyright (c) 2014年 com.mhealth365. All rights reserved.
//

/*
 *  主要用于获取设备的总内存大小、可用空间、已用空间=总内存大小-可用空间。
 *  return float数值.
 *
 *  Upload Date: 2017/01/06
 */

#import <Foundation/Foundation.h>

@interface GetDiskSize : NSObject

//随机生成一串字符.可以用来当做文件名或其他
+ (NSString*) createUuidString;

//获取系统内磁盘空间总大小
+(float) getDiskSize;

//获取系统内可用磁盘空间
+(float) getDiskFreeSize;


@end
