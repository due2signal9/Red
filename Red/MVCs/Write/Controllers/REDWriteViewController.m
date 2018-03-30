//
//  REDWriteViewController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/29.
//

#import "REDWriteViewController.h"
#import "REDBarButtonItem.h"

@interface REDWriteViewController ()

@end

@implementation REDWriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initNavigationBar];
    [self initSubviews];
    [self setupSubviews];
    // Do any additional setup after loading the view.
}

- (void)initNavigationBar {
    
    UIBarButtonItem *rightAdd = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemAdd target: self action: @selector(add)];
    [[self navigationItem] setRightBarButtonItem: rightAdd];
}

- (void)initSubviews {
    
    
}

- (void)setupSubviews {
    
    
}

- (void)add {
    
    
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
