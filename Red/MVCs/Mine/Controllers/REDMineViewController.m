//
//  REDMineViewController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "REDMineViewController.h"
#import "REDMineTableViewManager.h"

@interface REDMineViewController ()

@end

@implementation REDMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initNavigationBar];
    [self initSubviews];
    [self setupSubviews];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    
    //[super viewWillAppear: animated];
    //self.navigationController.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated {
    
    //[super viewWillDisappear: animated];
    //self.navigationController.delegate = nil;
}

- (void)initSubviews {
    
    REDMineTopView *topView = [[REDMineTopView alloc] initWithWith: FF_RELATIVE_SCREEN_WIDTH];
    [self setTopView: topView];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame: CGRectZero style: UITableViewStylePlain];
    [self setTableView: tableView];
    [[self tableView] setDataSource: self];
    [[self tableView] setDelegate: self];
}

- (void)setupSubviews {
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [[REDMineTableViewManager sectionInfos] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSArray *cellInfos = [[REDMineTableViewManager sectionInfos] objectAtIndex: section];
    return [cellInfos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [REDMineTableViewManager generateCellWithIndexPath: indexPath];
//    if (!cell)
//    {
//
//        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleValue1 reuseIdentifier: @"mine_cell_id"];
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//        UIImage *image = [UIImage imageNamed: @"avatar"];
//        [cell.imageView setImage: image];
//        [cell.textLabel setText: @"测试"];
//    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [tableView deselectRowAtIndexPath: indexPath animated: 1];
    [REDMineTableViewManager pushToViewControllerWithTarget: self withIndexPath: indexPath];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 15.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    //BOOL isHidden = [viewController isKindOfClass: [self class]];
    //[self.navigationController setNavigationBarHidden: isHidden animated: 1];
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
