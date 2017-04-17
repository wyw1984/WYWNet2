//
//  WYWNet1HttpTool.m
//  Pods
//
//  Created by yanwu wei on 2017/4/17.
//
//

#import "WYWNet2HttpTool.h"
#import <AFNetworking/AFNetworking.h>
#import "WYWNet2HttpHelper.h"

@implementation WYWNet2HttpTool

+ (AFHTTPSessionManager *)manager
{
    static AFHTTPSessionManager *_manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [AFHTTPSessionManager manager];
    });
    return _manager;
}


+ (void)get:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure
{
    // 1.创建请求管理者
    AFHTTPSessionManager *mgr = [WYWNet2HttpTool manager];
    mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html",@"text/json", @"text/javascript", @"text/plain", nil];
    // 2.发送请求
    [mgr GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success)
        {
            success(responseObject);
            [WYWNet2HttpHelper log:responseObject url:url];
            
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure)
        {
            failure(error);
            [WYWNet2HttpHelper logError:error url:url];
            
        }
    }];
}

+ (void)getData:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure
{
    // 1.创建请求管理者
    AFHTTPSessionManager *mgr = [WYWNet2HttpTool manager];
    mgr.responseSerializer = [AFHTTPResponseSerializer serializer];
    // 2.发送请求
    [mgr GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success)
        {
            success(responseObject);
            //[WYWNet2HttpHelper log:responseObject url:url];
            
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure)
        {
            failure(error);
            //[WYWNet2HttpHelper logError:error url:url];
            
        }
    }];
}




+ (void)post:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure
{
    // 1.创建请求管理者
    AFHTTPSessionManager *mgr = [WYWNet2HttpTool manager];
    
    // 2.发送请求
    [mgr POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success)
        {
            success(responseObject);
            [WYWNet2HttpHelper log:responseObject url:url];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure)
        {
            failure(error);
            [WYWNet2HttpHelper logError:error url:url];
            
        }
    }];
}


@end
