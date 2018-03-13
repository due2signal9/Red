//
//  AppDelegate+FFNotification.m
//  Red
//
//  Created by 郭赞华 on 2018/3/13.
//

#import "AppDelegate+FFNotification.h"
#import "TSMessages/TSMessage.h"
#import "Reachability/Reachability.h"
#import "FFNoticeManager.h"

@implementation AppDelegate (FFNotification)

- (void)addNotification {
    
    [[NSNotificationCenter defaultCenter] addObserver: self selector: @selector(reachabilityChanged:) name: kReachabilityChangedNotification object: nil];
}

- (void)reachabilityChanged: (NSNotification *)notification {
    
    Reachability *curReach = [notification object];
    
    if ( [curReach isKindOfClass: [Reachability class]] )
    {
        
        NetworkStatus status = [curReach currentReachabilityStatus];
        switch (status) {
            case NotReachable:
            {
                
                [[FFNoticeManager sharedManager] showTsNoticeWithMessage: @"当前无网络状态" type: TSMessageNotificationTypeError duration: 2.0];
                break;
            }
            case ReachableViaWiFi:
            {
                
                [[FFNoticeManager sharedManager] showTsNoticeWithMessage: @"网络已切换到Wifi状态" type: TSMessageNotificationTypeSuccess duration: 2.0];
                break;
            }
            case ReachableViaWWAN:
            {
                
                [[FFNoticeManager sharedManager] showTsNoticeWithMessage: @"网络已切换到2G/3G/4G状态" type: TSMessageNotificationTypeWarning duration: 2.0];
                break;
            }
            default:
            {
                
                [[FFNoticeManager sharedManager] showTsNoticeWithMessage: @"未识别的网络状态" type: TSMessageNotificationTypeMessage duration: 2.0];
                break;
            }
        }
    }
}

@end
