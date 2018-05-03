//
//  REDLoginPhoneService.m
//  Red
//
//  Created by 郭赞华 on 2018/5/3.
//

#import "REDLoginPhoneService.h"

@implementation REDLoginPhoneService

- (METHOD)requestMethod {
    
    return POST;
}

- (NSDictionary *)requestArgument {
    
    return @{@"phone": @"123456", @"password": @"123456"};
}

@end
