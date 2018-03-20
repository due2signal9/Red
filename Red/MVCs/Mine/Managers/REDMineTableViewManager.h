//
//  REDMineTableViewManager.h
//  Red
//
//  Created by 郭赞华 on 2018/3/20.
//

#import <Foundation/Foundation.h>

@interface REDMineTableViewManager : NSObject

+ (NSArray *)sectionInfos;
+ (void)pushToViewControllerWithTarget:(id)target withIndexPath:(NSIndexPath *)indexPath;
+ (UITableViewCell *)generateCellWithIndexPath:(NSIndexPath *)indexPath;

@end
