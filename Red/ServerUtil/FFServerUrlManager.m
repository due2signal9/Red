//
//  FFServerUrlManager.m
//  Red
//
//  Created by 郭赞华 on 2018/4/28.
//

#import "FFServerUrlManager.h"

static FFServerUrlManager *_instance = nil;
static NSDictionary *_server_dict = nil;

@implementation FFServerUrlManager

+ (instancetype)sharedManager {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instance = [[self alloc] init];
    });
    
    return _instance;
}

+ (NSDictionary *)getServerDictForType:(NSString *)type {
    
    if ( _server_dict == nil )
    {
        
        NSString *path = [[NSBundle mainBundle] pathForResource: @"server-info" ofType: @"plist"];
        NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile: path];
        
        if ( [dict count] )
        {
            
            NSDictionary *v14 = [dict objectForKeyedSubscript: type];
            if ( v14 && [v14 count] )
            {
                
                _server_dict = v14;
            }
        }
    }
    
    return _server_dict;
}

+ (NSString *)getApiHostForServerType:(NSString *)type {
    
    NSString *apiHost = @"这里应该处理处理错误的情况";

    NSDictionary *server_dict = [[self class] getServerDictForType: type];
    
    if ( server_dict && [server_dict count] )
    {
        
        NSString *api_host = [server_dict objectForKeyedSubscript: @"api_host"];
        if ( api_host )
        {
            
            if ( ![api_host hasSuffix: @"/"] )
            {
                
                apiHost = [NSString stringWithFormat: @"%@%@", api_host, @"/"];
            }
        }
    }
    
    return apiHost;
}

+ (NSString *)getApiHostPortForServerType: (NSString *)type {
    
    NSString *apiPort = @"这里应该处理处理错误的情况";
    
    NSDictionary *server_dict = [[self class] getServerDictForType: type];
    
    if ( server_dict && [server_dict count] )
    {
        
        NSString *api_port = [server_dict objectForKeyedSubscript: @"api_host_port"];
        if ( api_port )
        {

            apiPort = api_port;
        }
    }
    
    return apiPort;
}

@end
