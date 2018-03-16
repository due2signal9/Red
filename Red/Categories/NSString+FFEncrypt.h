//
//  NSString+FFEncrypt.h
//  Red
//
//  Created by 郭赞华 on 2018/3/16.
//

#import <Foundation/Foundation.h>

@interface NSString (FFEncrypt)

- (NSString *)md5String;
- (NSString *)sha256String;
- (NSString *)sha512String;
- (NSString *)base64EncodedString;
+ (NSString *)stringWithBase64EncodedString:(NSString *)base64EncodedString;

@end
