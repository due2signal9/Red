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

    self.automaticallyAdjustsScrollViewInsets = YES;
    // Do any additional setup after loading the view.
}

//- (BOOL)amITheFirstController {
//
//    NSArray *VCs = [[self navigationController] viewControllers];
//
//    if ([VCs count])
//    {
//
//        Class cls = [[VCs objectAtIndex: 0] class];
//        return [self isKindOfClass: cls];
//    }
//
//    return 1;
//}
//- (UIViewController *)rootVC {
//
//    NSArray *VCs = [[self navigationController] viewControllers];
//
//    if ([VCs count])
//    {
//
//        return [VCs firstObject];
//    }
//
//    return nil;
//}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
//    BOOL isHidden = 1;
//    if ([viewController isKindOfClass: [[self rootVC] class]])
//        isHidden = 0;
//    [[[self tabBarController] tabBar] setHidden: isHidden];
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
