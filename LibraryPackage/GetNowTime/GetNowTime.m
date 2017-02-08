//
//  GetNowTime.m
//  LibraryPackage
//
//  Created by zivInfo on 16/5/6.
//  Copyright © 2016年 xiwangtech.com. All rights reserved.
//

#import "GetNowTime.h"

@implementation GetNowTime

//获取当前时间簇
+ (NSString *) getNowTimec
{
    NSDate* dat = [NSDate date];
    NSTimeInterval a = [dat timeIntervalSince1970]*1000;
    NSString *timeString = [NSString stringWithFormat:@"%.0f", a];
    
    return timeString;
}

//获取当前时间 -区分
+(NSString *) getCurrentTime001
{
    NSDate *date = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    
    NSString *DateTime = [formatter stringFromDate:date];
    
    return DateTime;
}

//获取当前时间 /区分
+(NSString *) getCurrentTime002
{
    NSDate *date = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY/MM/dd hh:mm:ss"];
    
    NSString *DateTime = [formatter stringFromDate:date];
    
    return DateTime;
}

//获取当前时间 /区分 SS毫秒
+(NSString *) getCurrentTimeSS
{
    NSDate *date = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY/MM/dd hh:mm:ss SS"];
    
    NSString *DateTime = [formatter stringFromDate:date];
    
    return DateTime;
}


@end
