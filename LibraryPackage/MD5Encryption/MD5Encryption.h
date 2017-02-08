//
//  MD5Encryption.h
//  LibraryPackage
//
//  Created by zivInfo on 16/5/7.
//  Copyright © 2016年 xiwangtech.com. All rights reserved.
//

/*
 *  对字符串进行MD5加密。
 *  return 加密后的内容。
 *
 *  Upload Date: 2016/05/07
 */

#import <Foundation/Foundation.h>

#import "CommonCrypto/CommonDigest.h"

@interface MD5Encryption : NSObject

//MD5加密
+ (NSString *)MD5Encryption:(NSString *)str;

@end
