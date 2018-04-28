//
//  FFUserUtil.m
//  Red
//
//  Created by 郭赞华 on 2018/4/23.
//

static FFUserUtil *_instance = nil;

#import "FFUserUtil.h"

@implementation FFUserUtil

+ (instancetype)sharedInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instance = [[self class] unarchive];
    });
    
    return _instance;
}

- (instancetype)init {
    
    self = [super init];
    
    if (self)
    {
        
        [self setToken: nil];
        [self setEmail: nil];
        [self setUser_id: nil];
        [self setUsername: nil];
        [self setIs_auto_login: 0];
        [self saveArchive];
    }
    
    return self;
}

+ (id)unarchive {
    
    FFUserUtil *archive = [NSKeyedUnarchiver unarchiveObjectWithFile: [[self class] archivePath]];
    if (!archive)
    {
        
        archive = [[[self class] alloc] init];
    }
    
    return archive;
}

- (BOOL)saveArchive {
    
    BOOL isSuccess = [NSKeyedArchiver archiveRootObject: self toFile: [[self class] archivePath]];
    return isSuccess;
}

+ (NSString *)archivePath {
    
    NSString *path = [@"user_local_info" stringByAppendingPathExtension: @"archive"];
    NSURL *url = [[NSFileManager defaultManager] URLForDirectory: 9 inDomain: 1 appropriateForURL: 0 create: 1 error: 0];
    return [[url path] stringByAppendingPathComponent: path];
}

- (void)logout {
    
    [self setUser_id: nil];
    [self setIs_auto_login: nil];
    [self setUsername: nil];
    [self setEmail: nil];
    
    [self saveArchive];
}

@end
