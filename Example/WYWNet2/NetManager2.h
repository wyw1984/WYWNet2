//
//  NetManager2.h
//  WYWNet2
//
//  Created by yanwu wei on 2017/4/17.
//  Copyright © 2017年 2126724184@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetManager2 : NSObject

+(void)MediaListByType:(int)type startPos:(int)startPos
               success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;




+(void)DeleteMediaByTitle:(NSString *)title
                  success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;


@end
