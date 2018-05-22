//
//  FFHttpBaseService.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "FFHttpBaseService.h"
#import "FFHttpManager.h"

@implementation FFHttpBaseService

- (instancetype)init {
    
    self = [super init];
    if ( !self )
    {
        
        self = [FFHttpBaseService init];
    }
    
    return self;
}

- (NSString *)baseURL {
    
    return nil;
}

- (NSString *)port {
    
    return nil;
}

- (NSString *)requestURL {
    
    return nil;
}

- (NSDictionary *)requestArgument {
    
    return nil;
}

- (METHOD)requestMethod {
    
    return GET;
}

- (CGFloat)timeoutInterval {
    
    return 60.0;
}

- (void)beginRequest {
    
    [[FFHttpManager sharedManager] addRequest: self];
}

- (NSString *)basicAuth {

    return nil;
}

- (NSString *)token {
    
    return nil;
}

- (NSString *)buildHttpURL {
    
    NSString *url = [self requestURL];
    if ( [url hasPrefix: @"http"] || [url hasPrefix: @"https"])
    {
        
        return url;
    }
    else
    {
        
        return [NSString stringWithFormat: @"%@%@%@", [self baseURL], [self port], [self requestURL]];
    }
}

@end
