//
//  NoticeManager.m
//  Red
//
//  Created by 郭赞华 on 2018/3/13.
//

#import "FFNoticeManager.h"

@implementation FFNoticeManager

//+ (FFNoticeManager *)sharedManager {
//    
//    static FFNoticeManager *_instance = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        
//        _instance = [[FFNoticeManager alloc] init];
//    });
//    
//    return _instance;
//}

+ (void)showTsNoticeWithMessage:(NSString *)message type:(TSMessageNotificationType)type duration:(NSTimeInterval)duration {
    
    [[self class] showTsNoticeWithTitle: nil message: message type: type duration: duration];
}

+ (void)showTsNoticeWithMessage:(NSString *)message type:(TSMessageNotificationType)type {
    
    [[self class] showTsNoticeWithTitle: nil message: message type: type duration: 2.0];
}

+ (void)showTsNoticeWithTitle:(NSString *)title message:(NSString *)message type:(TSMessageNotificationType)type duration:(NSTimeInterval)duration {
    
    [TSMessage showNotificationInViewController: [TSMessage defaultViewController] title: title subtitle: message type: type duration: duration];
}

+ (void)showTsNoticeWithTitle:(NSString *)title message:(NSString *)message type:(TSMessageNotificationType)type {
    
        [TSMessage showNotificationInViewController: [TSMessage defaultViewController] title: title subtitle: message type: type duration: 2.0];
}

+ (void)showHudMessage:(NSString *)message {
    
    [FFCommonUtil runOnMainThreadWithBlock: ^{
        
        [[self class] showHudMessage: message inView: [FFCommonUtil ff_keyWindow]];
    }];
}

+ (void)showHudSuccess:(NSString *)message {
    
    [FFCommonUtil runOnMainThreadWithBlock: ^{
        
        
    }];
}

+ (void)showHudError:(id)error {
    
    if ( [error isKindOfClass: [NSString class]] )
    {
        
    }
    else if ([error isKindOfClass: [NSError class]])
    {
        
        
    }
}

+ (void)showHudMessage:(NSString *)message inView:(UIView *)view {
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo: view animated: 1];
    [hud setMode: MBProgressHUDModeText];
    [[hud label] setText: message];
    [hud hideAnimated: 1 afterDelay: 2.0];
}

+ (void)showHudTitle:(NSString *)title subTitlte:(NSString *)subTitle {
    
    [FFCommonUtil runOnMainThreadWithBlock: ^{
        
        [[self class] showHudTitle: title subTitlte: subTitle inView: [FFCommonUtil ff_keyWindow]];
    }];
}

+ (void)showHudTitle:(NSString *)title subTitlte:(NSString *)subTitle inView: (UIView *)view {
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo: view animated: 1];
    [[hud label] setText: title];
    [[hud detailsLabel] setText: subTitle];
    //UIFont *font = [UIFont systemFontOfSize: 14.0];
    //[[hud detailsLabel] setFont: font];
    [hud setRemoveFromSuperViewOnHide: 1];
}

@end
