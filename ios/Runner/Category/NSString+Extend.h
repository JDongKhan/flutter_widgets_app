//
//  NSString+Extend.h
//  Pods
//
//  Created by shaolei on 17/4/1.
//
//

#import <Foundation/Foundation.h>

@interface NSString (Extend)

/// MD5加密
- (NSString *)VPN_MD5;

/// SHA256
- (NSString *)VPN_SHA256;


/// AES128加密
- (NSString *)VPN_AES128EncryptWithKey:(NSString *)key;

/// 域名合法性校验
- (BOOL)isDomain;

@end
