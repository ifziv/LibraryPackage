//
//  AppDelegate.m
//  LibraryPackage
//
//  Created by zivInfo on 17/1/6.
//  Copyright © 2017年 xiwangtech.com. All rights reserved.
//

#import "AppDelegate.h"
#import "LogFile.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(void) LoginAction
{
    NSLog(@".........");
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSSetUncaughtExceptionHandler (&UncaughtExceptionHandler);

    
    return YES;
}

void UncaughtExceptionHandler(NSException *exception) {
    
    NSString *name = [exception name];           //异常类型
    NSString *reason = [exception reason];       //非常重要，就是崩溃的原因
    NSArray *arr = [exception callStackSymbols]; //得到当前调用栈信息
    
    [[LogFile new] userInfoWithUID:[NSString stringWithFormat:@"%@ %@ %@", name, reason, arr]];

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
