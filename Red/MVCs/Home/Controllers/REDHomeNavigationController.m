//
//  REDHomeNavigationController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "REDHomeNavigationController.h"

@interface REDHomeNavigationController ()

@end

@implementation REDHomeNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)frostedViewController:(REFrostedViewController *)frostedViewController willShowMenuViewController:(UIViewController *)menuViewController {
    
    self.tabBarController.tabBar.hidden = YES;
}

- (void)frostedViewController:(REFrostedViewController *)frostedViewController didHideMenuViewController:(UIViewController *)menuViewController {
    
    self.tabBarController.tabBar.hidden = NO;
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
