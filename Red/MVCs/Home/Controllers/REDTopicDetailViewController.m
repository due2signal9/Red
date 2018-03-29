//
//  REDTopicDetailViewController.m
//  Red
//
//  Created by 郭赞华 on 2018/3/29.
//

#import "REDTopicDetailViewController.h"

@interface REDTopicDetailViewController ()

@end

@implementation REDTopicDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initNavigationBar];
    [self initSubviews];
    [self setupSubviews];
    // Do any additional setup after loading the view.
}

- (void)initNavigationBar {
    
    self.title = @"科幻文学";
}

- (void)initSubviews {
    
    [[self view] setBackgroundColor: [UIColor whiteColor]];
}

- (void)setupSubviews {
    
}

- (void)setupWithModel:(REDMyTopicModel *)model {
    
    NSLog(@"TEST: MODEL SETUP!");
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
