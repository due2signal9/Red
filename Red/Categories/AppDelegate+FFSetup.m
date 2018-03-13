//
//  AppDelegate+FFSetup.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "AppDelegate+FFSetup.h"
#import "Reachability/Reachability.h"

@implementation AppDelegate (FFSetup)

- (void)setupReachability {
    
    Reachability *reachability = [Reachability reachabilityWithHostName: @"www.xxx.com"];
    [reachability startNotifier];
}

@end
