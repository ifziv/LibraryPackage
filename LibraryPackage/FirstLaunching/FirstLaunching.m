//
//  FirstLaunching.m
//  LibraryPackage
//
//  Created by zivInfo on 15/3/6.
//  Copyright (c) 2015年 com.mhealth365. All rights reserved.
//

#import "FirstLaunching.h"

@implementation FirstLaunching

// 获取当前App版本号
+(NSString *) getAppCurrentVersion
{
    NSString *app_Version = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];;

    return app_Version;
}

/*
 * 是否为版本升级后的第一次打开程序
 */
+ (BOOL)isFirstLaunching
{
    // 从plist文件中取出版本号
    NSString *currentVersion = [self getAppCurrentVersion];
    
    // 取出NSUserDefaults中的版本号
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *lastRunVersion = [defaults objectForKey:LAST_RUN_VERSION_KEY];
    
    // 应用程序全新安装，返回yes进入引导页面
    if (!lastRunVersion) {
        [defaults setObject:currentVersion forKey:LAST_RUN_VERSION_KEY];
        [defaults setObject:[NSNumber numberWithInt:1] forKey:APP_LAUNCH_TIMES_KEY];
        return YES;
    }
    
    // 应用程序升级安装
    if (![lastRunVersion isEqualToString:currentVersion]) {
        [defaults setObject:currentVersion forKey:LAST_RUN_VERSION_KEY];
        // 重置应用程序启动次数计数器以及打分提醒设置
        [defaults setObject:[NSNumber numberWithInt:1] forKey:APP_LAUNCH_TIMES_KEY];
        [defaults synchronize];
        return YES;
    }
    
    // 应用程序启动次数+1
    int appLaunchTimes = [[defaults objectForKey:APP_LAUNCH_TIMES_KEY] intValue];
    [defaults setObject:[NSNumber numberWithInt:++appLaunchTimes] forKey:APP_LAUNCH_TIMES_KEY];
    [defaults synchronize];
    
    // NSLog(@">>>>>——---启动次数%d",appLaunchTimes);
    
    return NO;
}


@end
