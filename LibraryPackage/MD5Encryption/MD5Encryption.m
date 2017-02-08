//
//  MD5Encryption.m
//  LibraryPackage
//
//  Created by zivInfo on 16/5/7.
//  Copyright © 2016年 xiwangtech.com. All rights reserved.
//

#import "MD5Encryption.h"

@implementation MD5Encryption

//md5 32位 加密 （小写）
+ (NSString *)MD5Encryption:(NSString *)str
{
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    CC_MD5( cStr, (int)strlen(cStr), result );
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}


@end
