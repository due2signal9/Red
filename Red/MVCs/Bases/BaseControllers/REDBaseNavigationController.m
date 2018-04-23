//
//  REDBaseNavigationController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/9.
//

#import "REDBaseNavigationController.h"

@interface REDBaseNavigationController ()

@end

@implementation REDBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self navigationBar] setBarTintColor: [UIColor colorWithHexString: @"ee1d24"]];
    [[self navigationBar] setTitleTextAttributes: @{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    [[self navigationBar] setTintColor: [UIColor whiteColor]];

    //[[[self navigationBar] layer] setShadowOffset: CGSizeMake(0, 1.0)];
    //[[[self navigationBar] layer] setShadowOpacity: 0.3];
    //[[[self navigationBar] layer] setShadowRadius: 1.0];
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
