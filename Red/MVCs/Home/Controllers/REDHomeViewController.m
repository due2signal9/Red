//
//  REDHomeViewController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "REDHomeViewController.h"
#import "REDTopicDetailedTableViewCell.h"
#import "REDMyTopicModel.h"
#import "REDTopicDetailViewController.h"

@interface REDHomeViewController ()

@end

@implementation REDHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initNavigationBar];
    [self initSubviews];
    [self setupSubviews];
    
    //test
    REDMyTopicModel *model1 = [REDMyTopicModel new];
    [model1 setTitle: @"科幻文学"];
    [model1 setSubTitle: @"89篇文章 | 78人关注"];
    REDMyTopicModel *model2 = [REDMyTopicModel new];
    [model2 setTitle: @"都市小说"];
    [model2 setSubTitle: @"9篇文章 | 7人关注"];
    [self setMyTopics: [NSMutableArray arrayWithObjects: model1, model2, nil]];
}

- (void)initNavigationBar {
    
    [super initNavigationBar];
    self.title = @"我感兴趣的";
    
    UIImage *img = [UIImage imageNamed: @"left_pop_menu"];
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage: img style: UIBarButtonItemStylePlain target: self action: @selector(showLeftMenu)];
    [[self navigationItem] setLeftBarButtonItem: leftBtn];
}

- (void)initSubviews {
    
    [super initSubviews];
    
    UITableView *tableView = [[UITableView alloc] init];
    [self setTableView: tableView];
    [[self view] addSubview: [self tableView]];
    [[self tableView] setDelegate: self];
    [[self tableView] setDataSource: self];
    [[self tableView] setBackgroundColor: [UIColor colorWithHexString: @"F8F8F8"]];
    [[self tableView] setTableFooterView: [[UIView alloc] init]];
}

- (void)setupSubviews {
    
    [super setupSubviews];
    
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
    
    return [[self myTopics] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    REDTopicDetailedTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"red_topic_detailed_cellid"];
    if (!cell)
    {
        
        cell = [[REDTopicDetailedTableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: @"red_topic_detailed_cellid"];
    }
    [[cell icon] setImage: [UIImage imageNamed: @"avatar_default"]];
    [cell updateCell: [[self myTopics] objectAtIndex: [indexPath row]]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 75.0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UIView *view = [[UIView alloc] init];
    [view setBackgroundColor: [UIColor clearColor]];
    
    return view;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath: indexPath animated: 1];
    REDTopicDetailViewController *topicDetailVC = [[REDTopicDetailViewController alloc] init];
    [topicDetailVC setupWithModel: [[self myTopics] objectAtIndex: [indexPath row]]];
    [[self navigationController] pushViewController: topicDetailVC animated: 1];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 15.0;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 1;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"TEST: DELETE COMMITTED!");
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
