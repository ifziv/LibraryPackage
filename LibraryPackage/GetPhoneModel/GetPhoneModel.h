//
//  GetPhoneModel.h
//  LibraryPackage
//
//  Created by zivInfo on 16/5/6.
//  Copyright © 2017年 xiwangtech.com. All rights reserved.
//

/*
 *  获取设备型号。
 *  return iPhone 4s || iPod Touch 4G || iPad 2G.
 *
 *  iPhone 更新到 iPhone9,2 == iPhone 7 Plus.
 *  iPod   更新到 iPod5,1   == iPod Touch 5G.
 *  iPad   更新到 iPad4,6   == iPad Mini 2G.
 *  
 *  Upload Date:  2017/01/06
 */

#import <Foundation/Foundation.h>

#import "sys/utsname.h"

@interface GetPhoneModel : NSObject

// e.g. @"iPhone 6S"
+(NSString *)deviceVersion;


@end
