//
//  FirstLaunching.h
//  LibraryPackage
//
//  Created by zivInfo on 15/3/6.
//  Copyright (c) 2015年 com.mhealth365. All rights reserved.
//

/*
 *  是否第一次打开应用程序 || 是否版本升级后打开应用程序
 *  return YES || NO
 *
 *  Upload Date: 2015/03/06
 */

#import <Foundation/Foundation.h>

#define APP_LAUNCH_TIMES_KEY  @"app_launch_times_key"             // 记录应用程序启动次数
#define LAST_RUN_VERSION_KEY  @"last_run_version_of_application"  // 记录应用程序的版本信息

@interface FirstLaunching : NSObject

// 获取当前App版本号
+(NSString *) getAppCurrentVersion;

// 检测当前版本的应用程序是否首次运行
+ (BOOL)isFirstLaunching;

@end
