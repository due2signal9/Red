//
//  NSString+FFEncrypt.m
//  Red
//
//  Created by 郭赞华 on 2018/3/16.
//

#import "NSString+FFEncrypt.h"
#import "NSData+FFEncrypt.h"
#include <CommonCrypto/CommonCrypto.h>

@implementation NSString (FFEncrypt)

- (NSString *)md5String {
    
    return [[self dataUsingEncoding: NSUTF8StringEncoding] md5String];
}

- (NSString *)sha256String {
    
    return [[self dataUsingEncoding: NSUTF8StringEncoding] sha256String];
}

- (NSString *)sha512String {
    
    return [[self dataUsingEncoding: NSUTF8StringEncoding] sha512String];
}

- (NSString *)base64EncodedString {
    
    return [[self dataUsingEncoding: NSUTF8StringEncoding] base64EncodedString];
}

+ (NSString *)stringWithBase64EncodedString:(NSString *)base64EncodedString {
    
    NSData *data = [NSData dataWithBase64EncodedString:base64EncodedString];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
