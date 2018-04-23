//
//  FFUserUtil.h
//  Red
//
//  Created by 郭赞华 on 2018/4/23.
//

#import <Foundation/Foundation.h>

@interface FFUserUtil : NSObject <NSCopying, NSCoding>

@property(nonatomic, copy) NSString *token;
@property(nonatomic, copy) NSString *user_id;
@property(nonatomic, copy) NSNumber *is_auto_login;
@property(nonatomic, copy) NSString *username;
@property(nonatomic, copy) NSString *email;

- (instancetype)init;
+ (instancetype)sharedInstance;
- (void)logout;
- (BOOL)saveArchive;

@end
