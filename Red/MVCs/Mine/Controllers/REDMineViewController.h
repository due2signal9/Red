//
//  REDMineViewController.h
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "REDBaseViewController.h"
#import "REDMineTopView.h"

@interface REDMineViewController : REDBaseViewController <UINavigationControllerDelegate, UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) REDMineTopView *topView;
@property(nonatomic, strong) UITableView *tableView;

@end
