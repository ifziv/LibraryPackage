//
//  HelpHeader.h
//  LibraryPackage
//
//  Created by zivInfo on 17/1/6.
//  Copyright © 2017年 xiwangtech.com. All rights reserved.
//

#ifndef HelpHeader_h
#define HelpHeader_h



//****************************
//***      便于全局引用
//****************************

#import "AppDelegate.h"
// 当前app的全局请求 定义该宏的时候必须先导入 #import "AppDelegate.h"
#define CURRENT_APP_DELEGATE ((AppDelegate *)[[UIApplication sharedApplication] delegate])

// 0表示正式地址，1表示测试地址
#define SERVICE_DEBUG 1
#define SERVICE_URL (SERVICE_DEBUG == 1)?URL_CS:URL_ZS
#define URL_ZS      @"https://service1.xiwangtech.com/?*="
#define URL_CS      @"http://192.168.1.20/?*="

// 自定义Log __FUNCTION__ 类名 ，__PRETTY_FUNCTION__ 方法名 ， __LINE__ 行。
// #define XWLog(fmt, ...) NSLog((@"[%s][Line %d]" fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#ifdef DEBUG
    #define XWLog(...) NSLog(__VA_ARGS__)
#else
    #define XWLog(...)
#endif



//****************************
//***      其它库文件
//****************************

#import "GetPhoneModel.h"
#import "RegularExpressions.h"
#import "HighStatusConversion.h"
#import "GetDiskSize.h"
#import "FirstLaunching.h"
#import "GetNowTime.h"
#import "MD5Encryption.h"
#import "StringManage.h"
#import "LogFile.h"


//****************************
//***      其它宏定义
//****************************

// e.g. @"My iPhone"
#define ZV_DEVICE_NAME [[UIDevice currentDevice] name]

#define ZV_DEVICE_INFO [[NSBundle mainBundle] infoDictionary]
#define ZV_APP_NAME    [ZV_DEVICE_INFO objectForKey:@"CFBundleName"]
#define ZV_APP_VERSION [ZV_DEVICE_INFO objectForKey:@"CFBundleShortVersionString"]
#define ZV_APP_BUILD   [ZV_DEVICE_INFO objectForKey:@"CFBundleVersion"]



#endif /* HelpHeader_h */
