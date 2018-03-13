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
    
    return @"http://www.xxx.com";
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

- (NSString *)buildHttpURL {
    
    NSString *url = [self requestURL];
    if ( [url hasPrefix: @"http"] )
    {
        
        return url;
    }
    else
    {
        
        return [NSString stringWithFormat: @"%@%@", [self baseURL], [self requestURL]];
    }
}

@end
