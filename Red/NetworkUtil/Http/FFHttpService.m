//
//  FFHttpService.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "FFHttpService.h"

@implementation FFHttpService

- (instancetype)init {
    
    self = [super init];
    return self;
}

- (void)requestAsyncWithReturend:(SuccessBlock)successBlock withProgress:(ProgressBlock)progressBlock withError:(ErrorBlock)errorBlock {
    
    FFWeakSelf(pSelf);
    [self setProgressBridgeBlock: ^(NSProgress *progress) {
       
        if (progressBlock)
            progressBlock(progress);
        [pSelf setProgressBridgeBlock: 0];
    }];
    
    FFWeakSelf(sSelf);
    [self setSuccessBridgeBlock: ^(NSURLSessionDataTask *task, id response) {
       
        if (successBlock)
            successBlock(response);
        [sSelf setTask: task];
        [sSelf setSuccessBridgeBlock: 0];
        [sSelf setProgressBridgeBlock: 0];
    }];
    
    FFWeakSelf(eSelf);
    [self setErrorBridgeBlock: ^(NSURLSessionDataTask *task, NSError *error) {
        
        if (errorBlock)
            errorBlock(error);
        [eSelf setTask: task];
        [eSelf setErrorBridgeBlock: 0];
        [eSelf setSuccessBridgeBlock: 0];
        [eSelf setProgressBridgeBlock: 0];
    }];
    
    NSOperation *operation = [NSBlockOperation blockOperationWithBlock: ^{
        
        [self beginRequest];
    }];
    [[[NSOperationQueue alloc] init] addOperation: operation];
}

- (void)requestSyncWithReturend:(SuccessBlock)successBlock withProgress:(ProgressBlock)progressBlock withError:(ErrorBlock)errorBlock {
    
    [self setProgressBridgeBlock: ^(NSProgress *progress) {
        
        if (progressBlock)
            progressBlock(progress);
    }];
    
    FFWeakSelf(sSelf);
    [self setSuccessBridgeBlock: ^(NSURLSessionDataTask *task, id response) {
        
        if (successBlock)
            successBlock(response);
        [sSelf setTask: task];
        [sSelf setSuccessBridgeBlock: 0];
    }];
    
    FFWeakSelf(eSelf);
    [self setErrorBridgeBlock: ^(NSURLSessionDataTask *task, NSError *error) {
        
        if (errorBlock)
            errorBlock(error);
        [eSelf setTask: task];
        [eSelf setErrorBridgeBlock: 0];
        [eSelf setSuccessBridgeBlock: 0];
        [eSelf setProgressBridgeBlock: 0];
    }];
    
    [self beginRequest];
    NSLog(@"[%@ | %@] -> 你启动了一个同步网络请求", [self class], NSStringFromSelector(_cmd));
}

- (void)resume {
    
    if ([self task])
    {
        
        [[self task] resume];
    }
}

- (void)suspend {

    if ([self task])
    {
        
        [[self task] suspend];
    }
}

- (void)cancel {
    
    if ( [self task] )
    {
        
        [[self task] cancel];
    }
}

@end
