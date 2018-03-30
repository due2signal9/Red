//
//  REDBarButtonItem.m
//  Red
//
//  Created by 郭赞华 on 2018/3/29.
//

#import "REDBarButtonItem.h"

@implementation REDBarButtonItem

+ (REDBarButtonItem *)barButtonItemWithNormalImage:(UIImage *)image target:(id)target action:(SEL)action {

    UIButton *btn = [UIButton buttonWithType: UIButtonTypeCustom];
    [btn setBackgroundImage: image forState: UIControlStateNormal];
    [btn addTarget: target action: action forControlEvents: UIControlEventTouchUpInside];
    [btn setSize: CGSizeMake(25, 25)];

    REDBarButtonItem *item = [[REDBarButtonItem alloc] initWithCustomView: btn];
    return item;
}

@end
