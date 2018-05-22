//
//  FFLocalizationManager.m
//  Red
//
//  Created by 郭赞华 on 2018/5/17.
//

#import "FFLocalizationManager.h"

@implementation FFLocalizationManager

//获取本地化的字符串
+ (NSString *)localizedStringWithKey:(NSString *)key {
    
    NSString *table = [NSString stringWithFormat: @"%@", [[self class] currentLanguage]];
    NSString *value = NSLocalizedStringFromTable(key, table, nil);
    return value;
}

//当前app所设置的语言，默认系统语言。
+ (NSString *)currentLanguage {
    
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey: @"RED_CURRENT_LANGUAGE"];
    
    if ( lang && [lang length] )
        return lang;
    NSArray *langs = @[@"en", @"zh-Hans"];
    
    NSString *sys_lang = [[self class] currentSystemLanguage];
    if ( [langs containsObject: sys_lang] )
        return sys_lang;
    return @"en";
}

//系统语言
+ (NSString *)currentSystemLanguage {
    
    NSString *local = [[NSLocale preferredLanguages] objectAtIndex: 0];
    NSString *version = [[UIDevice currentDevice] systemVersion];
    
    if ( [version floatValue] >= 9.0 )
    {
        
        if ( [local hasPrefix: @"zh-Hans"] )
            local = @"zh-Hans";
    }
    
    return local;
}

@end
