//
//  GetNowTime.h
//  LibraryPackage
//
//  Created by zivInfo on 16/5/6.
//  Copyright © 2016年 xiwangtech.com. All rights reserved.
//

/*
 *  获取到当前时间戳 || 获取到当前时间
 *  return 规定格式返回。
 *
 *  Upload Date: 2016/05/06
 */

#import <Foundation/Foundation.h>

@interface GetNowTime : NSObject

//获取当前时间簇
+ (NSString *)getNowTimec;

//获取当前时间 -区分
+(NSString *) getCurrentTime001;

//获取当前时间 /区分
+(NSString *) getCurrentTime002;

//获取当前时间 /区分 带毫秒
+(NSString *) getCurrentTimeSS;

@end
