//
//  REDTopicDetailedTableViewCell.m
//  Red
//
//  Created by 郭赞华 on 2018/3/29.
//

#import "REDTopicDetailedTableViewCell.h"

@implementation REDTopicDetailedTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle: style reuseIdentifier: reuseIdentifier];
    if (self)
    {
        
        [self initSubviews];
        [self setupSubviews];
    }
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)initSubviews {
    
    [[self contentView] removeAllSubviews];
    [self setIcon: [[UIImageView alloc] init]];
    [self setTitleLabel: [[UILabel alloc] init]];
    [self setSubTitleLabel: [[UILabel alloc] init]];
    [self setAccessoryIcon: [[UIImageView alloc] init]];
    [[self contentView] addSubview: [self icon]];
    [[self contentView] addSubview: [self titleLabel]];
    [[self contentView] addSubview: [self subTitleLabel]];
    [[self contentView] addSubview: [self accessoryIcon]];
}

- (void)setupSubviews {
    
    [[[self icon] layer] setCornerRadius: 5.0];
    [[self icon] mas_makeConstraints: ^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.contentView.mas_left).offset(10.0);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.width.mas_equalTo(50.0);
        make.height.mas_equalTo(50.0);
    }];
    
    [[self accessoryIcon] mas_makeConstraints: ^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(13.0);
        make.height.mas_equalTo(13.0);
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
        make.right.equalTo(self.contentView.mas_right).offset(-10.0);
    }];
    
    [[self titleLabel] setTextColor: [UIColor blackColor]];
    [[self titleLabel] setFont: [UIFont systemFontOfSize: 16.0]];
    [[self titleLabel] setTextAlignment: NSTextAlignmentLeft];
    [[self titleLabel] mas_makeConstraints: ^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.icon.mas_right).offset(10.0);
        make.right.equalTo(self.accessoryIcon.mas_left).offset(-10.0);
        make.top.equalTo(self.icon.mas_top);
        make.height.mas_equalTo(24.0);
    }];
    
    [[self subTitleLabel] setTextColor: [UIColor lightGrayColor]];
    [[self subTitleLabel] setFont: [UIFont systemFontOfSize: 14.0]];
    [[self subTitleLabel] setTextAlignment: NSTextAlignmentLeft];
    [[self subTitleLabel] mas_makeConstraints: ^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.icon.mas_right).offset(10.0);
        make.right.equalTo(self.accessoryIcon.mas_left).offset(-10.0);
        make.bottom.equalTo(self.icon.mas_bottom).offset(3.0);
        make.height.mas_equalTo(23.0);
    }];
}

- (void)updateCell:(REDMyTopicModel *)model {
    
    [[self titleLabel] setText: model.title];
    [[self subTitleLabel] setText: model.subTitle];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
