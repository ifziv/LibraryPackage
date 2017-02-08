//
//  StringManage.h
//  LibraryPackage
//
//  Created by zivInfo on 17/1/6.
//  Copyright © 2017年 xiwangtech.com. All rights reserved.
//

/*
 *  对NSString类型进行的各种处理。
 *  return 处理后的内容。
 *
 *  Upload Date: 2017/01/06
 */

#import <Foundation/Foundation.h>

@interface StringManage : NSObject

// PHP的URL 或者其它 URL中有特殊字符的处理。 如：[]、{}、空格等。
+(NSString *) stringManagePHPNull:(NSString *)string;

//Unicode转UTF-8
+(NSString *) stringManageUnicodeToUTF8:(NSString *)string;

// UTF-8转Unicode
+(NSString *) stringManageUTF8ToUnicode:(NSString *)string;

//截取string，从s位开始，截取e位
+(NSString *) stringSubstringRange:(NSString *)string withS:(int)s withE:(int)e;

//字符串从第s位开端截取，直到最后.(包括s位)
+(NSString *) stringSubstringFromIndex:(NSString *)string withS:(int)s;

//字符串截取到第e位.(第e位不算再内）
+(NSString *) stringSubstringToIndex:(NSString *)string withE:(int)e;

@end
