//
//  FFPathManager.m
//  Red
//
//  Created by 郭赞华 on 2018/3/16.
//

#import "FFPathManager.h"

@implementation FFPathManager

+ (NSString *)pathOfTemporary {
    
    return NSTemporaryDirectory();
}

+ (NSString *)pathOfDocument {
    
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
}

+ (NSString *)pathOfCache {
    
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
}

+ (NSURL *)urlOfDocument {
    
    return [[[NSFileManager defaultManager] URLsForDirectory: NSDocumentDirectory inDomains: NSUserDomainMask] lastObject];
}
+ (NSURL *)urlOfCache {
    
    return [[[NSFileManager defaultManager] URLsForDirectory: NSCachesDirectory inDomains: NSUserDomainMask] lastObject];
}

@end
