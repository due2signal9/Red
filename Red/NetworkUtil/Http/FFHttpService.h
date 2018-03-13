//
//  FFHttpService.h
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "FFHttpBaseService.h"

@interface FFHttpService : FFHttpBaseService

@property(strong, nonatomic) NSURLSessionTask *task;

- (instancetype)init;

- (void)resume;
- (void)suspend;
- (void)cancel;

- (void)requestAsyncWithReturend: (SuccessBlock)successBlock withProgress: (ProgressBlock)progressBlock withError: (ErrorBlock)errorBlock;
- (void)requestSyncWithReturend: (SuccessBlock)successBlock withProgress: (ProgressBlock)progressBlock withError: (ErrorBlock)errorBlock;

@end
