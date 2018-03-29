//
//  REDBaseViewController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "REDBaseViewController.h"

@interface REDBaseViewController ()

@end

@implementation REDBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)initNavigationBar {
    
    [[[self navigationController] navigationBar] setBarTintColor: [UIColor colorWithHexString: @"ee1d24"]];
    [[[self navigationController] navigationBar] setTitleTextAttributes: @{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    [[[self navigationController] navigationBar] setTintColor: [UIColor whiteColor]];
}

-(void)initSubviews {
    
    self.automaticallyAdjustsScrollViewInsets = YES;
}

- (void)setupSubviews {
    
    
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
