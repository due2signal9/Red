//
//  HttpManager.h
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import <Foundation/Foundation.h>
#import "AFNetworking/AFNetworking.h"
#import "FFHttpBaseService.h"

@interface FFHttpManager : NSObject

@property(strong, nonatomic) AFHTTPSessionManager *sessionManager;
@property(strong, nonatomic) AFNetworkReachabilityManager *reachabilityManager;

- (instancetype)init;
- (void)addRequest: (FFHttpBaseService *)service;
+ (FFHttpManager *)sharedManager;

@end
