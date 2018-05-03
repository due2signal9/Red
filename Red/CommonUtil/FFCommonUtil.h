//
//  FFCommonUtil.h
//  Red
//
//  Created by 郭赞华 on 2018/3/29.
//

typedef void(^MainThreadBlock)(void);
#import <Foundation/Foundation.h>

@interface FFCommonUtil : NSObject

+ (void)runOnMainThreadWithBlock:(MainThreadBlock)block;
+ (UIWindow *)ff_keyWindow;
+ (BOOL)isLegalPhone;

@end
