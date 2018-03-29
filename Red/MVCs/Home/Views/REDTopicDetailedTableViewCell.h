//
//  REDTopicDetailedTableViewCell.h
//  Red
//
//  Created by 郭赞华 on 2018/3/29.
//

#import <UIKit/UIKit.h>
#import "REDMyTopicModel.h"

@interface REDTopicDetailedTableViewCell : UITableViewCell

@property(strong, nonatomic) UIImageView *icon;
@property(strong, nonatomic) UILabel *titleLabel;
@property(strong, nonatomic) UILabel *subTitleLabel;
@property(strong, nonatomic) UIImageView *accessoryIcon;

- (void)updateCell:(REDMyTopicModel *)model;

@end
