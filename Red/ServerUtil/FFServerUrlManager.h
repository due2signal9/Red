//
//  FFServerUrlManager.h
//  Red
//
//  Created by 郭赞华 on 2018/4/28.
//

#import <Foundation/Foundation.h>

@interface FFServerUrlManager : NSObject

+ (instancetype)sharedManager;
+ (NSString *)getApiHostForServerType:(NSString *)type;
+ (NSString *)getApiHostPortForServerType:(NSString *)type;

@end
