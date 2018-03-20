//
//  NoticeManager.m
//  Red
//
//  Created by 郭赞华 on 2018/3/13.
//

#import "FFNoticeManager.h"

@implementation FFNoticeManager

+ (FFNoticeManager *)sharedManager {
    
    static FFNoticeManager *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instance = [[FFNoticeManager alloc] init];
    });
    
    return _instance;
}

- (void)showTsNoticeWithMessage:(NSString *)message type:(TSMessageNotificationType)type duration:(NSTimeInterval)duration {
    
    [self showTsNoticeWithTitle: nil message: message type: type duration: duration];
}

- (void)showTsNoticeWithMessage:(NSString *)message type:(TSMessageNotificationType)type {
    
    [self showTsNoticeWithTitle: nil message: message type: type duration: 2.0];
}

- (void)showTsNoticeWithTitle:(NSString *)title message:(NSString *)message type:(TSMessageNotificationType)type duration:(NSTimeInterval)duration {
    
    [TSMessage showNotificationInViewController: [TSMessage defaultViewController] title: title subtitle: message type: type duration: duration];
}

- (void)showTsNoticeWithTitle:(NSString *)title message:(NSString *)message type:(TSMessageNotificationType)type {
    
        [TSMessage showNotificationInViewController: [TSMessage defaultViewController] title: title subtitle: message type: type duration: 2.0];
}

@end
