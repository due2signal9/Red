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
        [self setPassword: nil];
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

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    return nil; //待补充
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    //待补充
}

- (void)logout {
    
    [self setUser_id: nil];
    [self setIs_auto_login: nil];
    [self setUsername: nil];
    [self setPassword: nil];
    [self setEmail: nil];
    
    [self saveArchive];
}

+ (NSString *)GET_TOKEN {
    
    return [[FFUserUtil sharedInstance] token];
}

+ (NSString *)GET_BASIC_AUTH {
    
    NSData *basicAuthCredentials = [[NSString stringWithFormat: @"%@:%@", [[FFUserUtil sharedInstance] username], [[FFUserUtil sharedInstance] password]] dataUsingEncoding: NSUTF8StringEncoding];
    NSString *base64AuthCredentials = [basicAuthCredentials base64EncodedStringWithOptions: 0];
    return [NSString stringWithFormat: @"Basic %@", base64AuthCredentials];
}

@end
