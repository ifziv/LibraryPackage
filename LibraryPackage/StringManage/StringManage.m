//
//  StringManage.m
//  LibraryPackage
//
//  Created by zivInfo on 17/1/6.
//  Copyright © 2017年 xiwangtech.com. All rights reserved.
//

#import "StringManage.h"

@implementation StringManage

#pragma mark - 
#pragma mark - URL处理
// PHP的URL 或者其它 URL中有特殊字符的处理。 如：[]、{}、空格等。
+(NSString *) stringManagePHPNull:(NSString *)string
{
    NSString *str = [string stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];

    return str;
}

#pragma mark -
#pragma mark - 字符串编码转换
// Unicode转UTF-8
+(NSString *) stringManageUnicodeToUTF8:(NSString *)string
{
    NSString *outputStr = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)string, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8));
    
    return outputStr;
}

// UTF-8转Unicode
+(NSString *) stringManageUTF8ToUnicode:(NSString *)string
{
    NSString * outputStr = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)string, NULL,(CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8 ));
    
    return outputStr;
}

#pragma mark -
#pragma mark - 字符串处理
//截取string，从s位开始，截取e位
+(NSString *) stringSubstringRange:(NSString *)string withS:(int)s withE:(int)e
{
    NSString *outputStr = [string substringWithRange:NSMakeRange(s,e)];
    
    return outputStr;
}

//字符串从第s位开端截取，直到最后.(包括s位)
+(NSString *) stringSubstringFromIndex:(NSString *)string withS:(int)s
{
    NSString *outputStr = [string substringFromIndex:s];
    
    return outputStr;
}

//字符串截取到第e位.(第e位不算再内）
+(NSString *) stringSubstringToIndex:(NSString *)string withE:(int)e
{
    NSString *outputStr = [string substringToIndex:e];
    
    return outputStr;
}


@end
