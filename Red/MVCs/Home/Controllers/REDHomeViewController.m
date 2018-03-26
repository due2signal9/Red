//
//  REDHomeViewController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "REDHomeViewController.h"
#import "HomeCateTableViewCell.h"

@interface REDHomeViewController ()

@end

@implementation REDHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initNavigationBar];
    [self initSubviews];
    [self setupSubviews];
}

- (void)initNavigationBar {
    
    self.title = @"我感兴趣的";
    
    UIImage *img = [UIImage imageNamed: @"left_pop_menu"];
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage: img style: UIBarButtonItemStylePlain target: self action: @selector(showLeftMenu)];
    [[self navigationItem] setLeftBarButtonItem: leftBtn];
}

- (void)initSubviews {
    
    UITableView *tableView = [[UITableView alloc] init];
    [self setTableView: tableView];
    [[self view] addSubview: [self tableView]];
    [[self tableView] setDelegate: self];
    [[self tableView] setDataSource: self];
    [[self tableView] setBackgroundColor: [UIColor colorWithHexString: @"F8F8F8"]];
    [[self tableView] setTableFooterView: [[UIView alloc] init]];
}

- (void)setupSubviews {
    
    [[self tableView] mas_makeConstraints: ^(MASConstraintMaker *make) {
        
        make.edges.insets(UIEdgeInsetsZero);
    }];
}

- (void)showLeftMenu {
    
    NSLog(@"YOU HAVE CLICKED LEFT MENU!!!");
    [self.frostedViewController presentMenuViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    HomeCateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"home_cate_cell_id"];
    if ( !cell )
    {
        
        cell = [[HomeCateTableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier: @"home_cate_cell_id"];
    }
    
    [cell.imageView setImage: [UIImage imageNamed: @"left_pop_menu"]];
    [cell.textLabel setText: @"title"];
    [cell.detailTextLabel setText: @"detail"];
    [cell setBackgroundColor: [UIColor whiteColor]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 88.0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UIView *view = [[UIView alloc] init];
    [view setBackgroundColor: [UIColor clearColor]];
    
    return view;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath: indexPath animated: 1];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 15.0;
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
