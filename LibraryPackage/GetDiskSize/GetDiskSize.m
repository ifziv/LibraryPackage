//
//  GetDiskSize.m
//  LibraryPackage
//
//  Created by ifziv on 14-5-23.
//  Copyright (c) 2014年 com.mhealth365. All rights reserved.
//

#import "GetDiskSize.h"

@implementation GetDiskSize

//随机生成一串字符.可以用来当做文件名或其他
+ (NSString*) createUuidString
{
    // create a new UUID which you own
    CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
    
    // create a new CFStringRef (toll-free bridged to NSString)
    // that you own
    NSString *uuidString = (__bridge NSString*)CFUUIDCreateString(kCFAllocatorDefault, uuid);
    
    // release the UUID
    CFRelease(uuid);
    
    // transfer ownership of the string
    // to the autorelease pool
    return uuidString;
}

//获取系统内磁盘空间总大小
+(float) getDiskSize
{
    NSDictionary *fsAttr = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:nil];
    //总大小
    float diskSize = [[fsAttr objectForKey:NSFileSystemSize]doubleValue] / 1000000000;
    
    return diskSize;
}

//获取系统内可用磁盘空间
+(float) getDiskFreeSize
{
    NSDictionary *fsAttr = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:nil];
    //剩余可用
    float diskSizeFree = [[fsAttr objectForKey:NSFileSystemFreeSize]doubleValue] / 1000000000;
    
    return diskSizeFree;
}


@end
