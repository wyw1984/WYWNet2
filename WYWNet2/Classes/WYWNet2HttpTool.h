//
//  WYWNet1HttpTool.h
//  Pods
//
//  Created by yanwu wei on 2017/4/17.
//
//

#import <Foundation/Foundation.h>


@interface WYWNet2HttpTool : NSObject

+ (void)get:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;

+ (void)getData:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;

+ (void)post:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;



@end
