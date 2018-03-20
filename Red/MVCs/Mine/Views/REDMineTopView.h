//
//  REDMineTopView.h
//  Red
//
//  Created by 郭赞华 on 2018/3/20.
//

#import <UIKit/UIKit.h>

@interface REDMineTopView : UIView

@property(strong, nonatomic) UIImageView *avatar;
@property(strong, nonatomic) UILabel *nameLabel;

- (instancetype)initWithWith:(CGFloat)width;

@end
