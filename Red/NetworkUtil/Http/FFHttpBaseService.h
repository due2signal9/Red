//
//  FFHttpBaseService.h
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

typedef void(^SuccessBridgeBlock)(NSURLSessionDataTask *task, id response);
typedef void(^ErrorBridgeBlock)(NSURLSessionDataTask *task, NSError *error);
typedef void(^ProgressBridgeBlock)(NSProgress *progress);

typedef void(^SuccessBlock)(id response);
typedef void(^ProgressBlock)(NSProgress *progress);
typedef void(^ErrorBlock)(NSError *error);

typedef enum : NSUInteger {
    GET,
    POST,
} METHOD;

#import <Foundation/Foundation.h>

@interface FFHttpBaseService : NSObject

@property(copy, nonatomic) SuccessBridgeBlock successBridgeBlock;
@property(copy, nonatomic) ProgressBridgeBlock progressBridgeBlock;
@property(copy, nonatomic) ErrorBridgeBlock errorBridgeBlock;

- (instancetype)init;
- (NSString *)baseURL;
- (NSString *)port;
- (NSString *)requestURL;
- (NSDictionary *)requestArgument;
- (CGFloat)timeoutInterval;
- (METHOD)requestMethod;
- (NSString *)buildHttpURL;
- (void)beginRequest;

@end
