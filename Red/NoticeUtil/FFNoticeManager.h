//
//  NoticeManager.h
//  Red
//
//  Created by 郭赞华 on 2018/3/13.
//

#import <Foundation/Foundation.h>
#import "TSMessages/TSMessage.h"

@interface FFNoticeManager : NSObject

+ (FFNoticeManager *)sharedManager;
- (void)showTsNoticeWithMessage: (NSString *)message type: (TSMessageNotificationType)type;
- (void)showTsNoticeWithMessage: (NSString *)message type: (TSMessageNotificationType)type duration: (NSTimeInterval)duration;
- (void)showTsNoticeWithTitle: (NSString *)title message: (NSString *)message type: (TSMessageNotificationType)type;
- (void)showTsNoticeWithTitle: (NSString *)title message: (NSString *)message type: (TSMessageNotificationType)type duration: (NSTimeInterval)duration;

@end
