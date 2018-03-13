//
//  REDMineViewController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "REDMineViewController.h"

@interface REDMineViewController ()

@end

@implementation REDMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"我的";
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear: animated];
    self.navigationController.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear: animated];
    self.navigationController.delegate = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    BOOL isHidden = [viewController isKindOfClass: [self class]];
    [self.navigationController setNavigationBarHidden: isHidden animated: 1];
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
