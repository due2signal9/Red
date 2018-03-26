//
//  REDHomeViewController.h
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "REDBaseViewController.h"

@interface REDHomeViewController : REDBaseViewController <UITableViewDelegate, UITableViewDataSource>

@property(strong, nonatomic) UITableView *tableView;

@end
