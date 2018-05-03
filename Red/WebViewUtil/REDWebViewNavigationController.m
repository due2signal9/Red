//
//  REDWebViewNavigationController.m
//  Red
//
//  Created by 郭赞华 on 2018/5/3.
//

#import "REDWebViewNavigationController.h"

@interface REDWebViewNavigationController ()

@end

@implementation REDWebViewNavigationController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    REDBaseViewController *mainController = [[REDBaseViewController alloc] init];
    [self setViewControllers: @[mainController]];
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
