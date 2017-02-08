//
//  RegularExpressions.h
//  LibraryPackage
//
//  Created by ifziv on 14-5-23.
//  Copyright (c) 2014年 com.mhealth365. All rights reserved.
//

/*
 *  主要针对用户登录、注册的时候，对各种数据的校验。
 *  return YES || NO .
 *
 *  Upload Date: 2017/01/06
 */

#import <Foundation/Foundation.h>

@interface RegularExpressions : NSObject

//用户名
+ (BOOL) validateUserName:(NSString *)name;

//密码
+ (BOOL) validatePassword:(NSString *)passWord;

//昵称
+ (BOOL) validateNickname:(NSString *)nickname;

//邮箱
+ (BOOL) validateEmail:(NSString *)email;

//手机号码验证
+ (BOOL) validateMobile:(NSString *)mobile;

//车牌号验证
+ (BOOL) validateCarNo:(NSString *)carNo;

//车型
+ (BOOL) validateCarType:(NSString *)CarType;

//身份证号
+ (BOOL) validateIdentityCard:(NSString *)identityCard;


@end
