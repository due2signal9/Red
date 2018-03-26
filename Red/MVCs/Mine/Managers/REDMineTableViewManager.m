//
//  REDMineTableViewManager.m
//  Red
//
//  Created by 郭赞华 on 2018/3/20.
//

#import "REDMineTableViewManager.h"

@implementation REDMineTableViewManager

+ (NSArray *)sectionInfos {
    
//    return @[
//  @[
//      @{
//          @"controller": @""
//
//          },
//      @{
//          @"controller": @""
//
//          },
//      @{
//          @"controller": @""
//
//          }
//      ],
//  @[
//      @{
//          @"controller": @""
//
//          },
//      @{
//          @"controller": @""
//
//          }
//      ],
//  @[
//      @{
//          @"controller": @""
//
//          },
//      @{
//          @"controller": @""
//
//          }
//      ]
//  ];
    
    return nil;
}

+ (UITableViewCell *)generateCellWithIndexPath:(NSIndexPath *)indexPath {
    
    return nil;
}

+ (NSDictionary *)getCellInfo:(NSIndexPath *)indexPath {
    
    NSArray *cellInfos = [[REDMineTableViewManager sectionInfos] objectAtIndex: indexPath.section];
    NSDictionary *cellInfo = [cellInfos objectAtIndex: indexPath.row];
    return cellInfo;
}

+ (void)pushToViewControllerWithTarget:(id)target withIndexPath:(NSIndexPath *)indexPath {
    
    NSString *clsStr = [[REDMineTableViewManager getCellInfo: indexPath] objectForKey: @"controller"];
    Class cls = NSClassFromString(clsStr);
    [target pushViewController: [[cls alloc] init] animated: 1];
}

@end
