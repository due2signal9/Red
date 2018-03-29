//
//  FFCommonManager.m
//  Red
//
//  Created by 郭赞华 on 2018/3/29.
//

#import "FFCommonManager.h"

@implementation FFCommonManager

+ (void)runOnMainThreadWithBlock:(MainThreadBlock)block {
    
    if ([NSThread isMainThread])
    {
        
        block();
    }
    else
    {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            block();
        });
    }
}

+ (UIWindow *)ff_keyWindow {
    
    return [UIApplication sharedApplication].keyWindow;
}

@end
