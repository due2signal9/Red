//
//  REDBaseTableView.m
//  Red
//
//  Created by 郭赞华 on 2018/3/30.
//

#import "REDBaseTableView.h"

@implementation REDBaseTableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init {
    
    self = [super init];
    if (self)
    {
        
        [self setBackgroundColor: [UIColor colorWithHexString: @"F8F8F8"]];
    }
    
    return self;
}

@end
