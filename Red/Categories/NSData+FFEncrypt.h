//
//  NSData+FFEncrypt.h
//  Red
//
//  Created by 郭赞华 on 2018/3/16.
//

#import <Foundation/Foundation.h>

@interface NSData (FFEncrypt)

- (NSData *)md5Data;
- (NSString *)md5String;
- (NSData *)sha256Data;
- (NSString *)sha256String;
- (NSData *)sha512Data;
- (NSString *)sha512String;
- (NSString *)base64EncodedString;
+ (NSData *)dataWithBase64EncodedString:(NSString *)base64EncodedString;

@end
