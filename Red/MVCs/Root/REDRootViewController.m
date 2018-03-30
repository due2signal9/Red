//
//  REDRootViewController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "REDRootViewController.h"
#import "REDHomeViewController.h"
#import "REDMineViewController.h"
#import "REDWriteViewController.h"
#import "REDHomeNavigationController.h"
#import "REDMineNavigationController.h"
#import "REDWriteNavigationController.h"

@interface REDRootViewController ()

@end

@implementation REDRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    REDHomeNavigationController *homeNC = [[REDHomeNavigationController alloc] initWithRootViewController: [[REDHomeViewController alloc] init]];
    REDWriteNavigationController *writeNC = [[REDWriteNavigationController alloc] initWithRootViewController: [[REDWriteViewController alloc] init]];
    REDMineNavigationController *mineNC = [[REDMineNavigationController alloc] initWithRootViewController: [[REDMineViewController alloc] init]];
    
    //待替换
    UIViewController *ccc = [[UIViewController alloc] init];
    
    REFrostedViewController *frostedVC = [[REFrostedViewController alloc] initWithContentViewController: homeNC menuViewController: ccc];
    frostedVC.delegate = homeNC;
    frostedVC.direction = REFrostedViewControllerDirectionLeft;
    
    frostedVC.tabBarItem.title = @"home";
    writeNC.tabBarItem.title = @"write";
    mineNC.tabBarItem.title = @"mine";
    
    NSArray *branches = @[frostedVC, writeNC, mineNC];
    [self setViewControllers: branches];
    // Do any additional setup after loading the view.
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
