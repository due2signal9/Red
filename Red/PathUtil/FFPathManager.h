//
//  FFPathManager.h
//  Red
//
//  Created by 郭赞华 on 2018/3/16.
//

#import <Foundation/Foundation.h>

@interface FFPathManager : NSObject

+ (NSString *)pathOfTemporary;
+ (NSString *)pathOfDocument;
+ (NSString *)pathOfCache;
+ (NSURL *)urlOfDocument;
+ (NSURL *)urlOfCache;

@end
