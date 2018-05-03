//
//  REDWebViewController.m
//  Red
//
//  Created by 郭赞华 on 2018/5/3.
//

#import "REDWebViewController.h"
#import "REDBaseNavigationBar.h"

@interface REDWebViewController ()

@property(strong, nonatomic) REDBaseNavigationBar *m_navigationBar;
@property(strong, nonatomic) WKWebView *m_webview;
@property(copy, nonatomic) NSString *m_url;

@end

@implementation REDWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initSubviews];
    [self setupSubviews];
    
    [[self m_webview] loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString: @"http:www.baidu.com"]]];
    // Do any additional setup after loading the view.
}

- (void)initSubviews {
    
    [self setM_webview: [[WKWebView alloc] init]];
    [[self m_webview] setUIDelegate: self];
    [[self m_webview] setNavigationDelegate: self];
    [[self view] addSubview: [self m_webview]];
}

- (void)setupSubviews {
    
    [[self m_webview] mas_makeConstraints: ^(MASConstraintMaker *make) {
       
        make.edges.insets(UIEdgeInsetsZero);
    }];
}

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    
    
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    
    
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    
    
}

- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error {
    
    
}

- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation {
    
    
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
