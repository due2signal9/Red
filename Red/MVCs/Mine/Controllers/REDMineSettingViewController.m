//
//  REDMineSettingViewController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/29.
//

#import "REDMineSettingViewController.h"

@interface REDMineSettingViewController ()

@end

@implementation REDMineSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initNavigationBar];
    [self initSubviews];
    [self setupSubviews];
}

- (void)initNavigationBar {
    
    self.title = @"设置";
}

- (void)viewWillAppear:(BOOL)animated {
    
    
}

- (void)initSubviews {
    
    UITableView *tableView = [[UITableView alloc] init];
    [self setTableView: tableView];
    [[self tableView] setSeparatorStyle: UITableViewCellSeparatorStyleNone];
    [[self tableView] setScrollEnabled: NO];
    [[self tableView] setDataSource: self];
    [[self tableView] setDelegate: self];
    [[self tableView] setBackgroundColor: [UIColor colorWithHexString: @"F8F8F8"]];
    UIView *view = [[UIView alloc] initWithFrame: CGRectZero];
    [view setBackgroundColor: [UIColor colorWithHexString: @"F8F8F8"]];
    [[self tableView] setTableFooterView: view];
    [[self view] addSubview: tableView];
}

- (void)setupSubviews {
    
    [[self tableView] mas_makeConstraints: ^(MASConstraintMaker *make) {
        
        make.edges.insets(UIEdgeInsetsZero);
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0)
        return 2;
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"mine_setting_cellid"];
    if (!cell)
    {
        
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleValue1 reuseIdentifier: @"mine_setting_cellid"];
    }
    NSArray *model = @[@"清除缓存", @"关于我们", @"", @""];
    if ([indexPath section] == 0)
        [[cell textLabel] setText: [model objectAtIndex:[indexPath row]]];
    else
        [[cell textLabel] setText: @"退出登录"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 44.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"TEST: YOU CLICKD CELL!");
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 15.0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UIView *view = [[UIView alloc] init];
    [view setBackgroundColor: [UIColor clearColor]];
    
    return view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
