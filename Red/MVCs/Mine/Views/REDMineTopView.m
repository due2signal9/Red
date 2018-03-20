//
//  REDMineTopView.m
//  Red
//
//  Created by 郭赞华 on 2018/3/20.
//

#import "REDMineTopView.h"

@implementation REDMineTopView

- (instancetype)initWithFrame:(CGRect)frame {
    
    CGRect x = frame;
    x.size.height = 200.0; //固定高度200.0
    
    self = [super initWithFrame: x];
    if (self)
    {
        
        [self setBackgroundColor: [UIColor whiteColor]];
        [self initSubviews];
        [self setupSubviews];
    }
    
    return self;
}

- (instancetype)initWithWith:(CGFloat)width {
    
    CGRect x = CGRectMake(0.0, 0.0, width, 0.0);
    self = [self initWithFrame: x];
    return self;
}

- (void)initSubviews {
    
    [self setAvatar: [[UIImageView alloc] init]];
    [self setNameLabel: [[UILabel alloc] init]];
    
    UIImage *defaultAvatar = [UIImage imageNamed: @"avatar"];
    [[self avatar] setImage: defaultAvatar];
}

- (void)setupSubviews {
    
    CGFloat avatarWidth = 100.0;
    [[[self avatar] layer] setCornerRadius: avatarWidth / 2.0];
    [[self avatar] mas_makeConstraints: ^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(avatarWidth);
        
        make.height.mas_equalTo(avatarWidth);
        
        make.left.equalTo(self.mas_left).offset(137.0);
        
        make.top.equalTo(self.mas_top).offset(45.0);
    }];
    
    UIFont *font = [UIFont systemFontOfSize: 18.0];
    [[self nameLabel] setFont: font];
    [[self nameLabel] setTextAlignment: NSTextAlignmentCenter];
    [[self nameLabel] mas_makeConstraints: ^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.avatar.mas_bottom).offset(10.0);
        
        make.height.mas_equalTo(30.0);
        
        make.left.equalTo(self.mas_left).offset(15.0);
        
        make.right.equalTo(self.mas_right).offset(-15.0);
    }];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
