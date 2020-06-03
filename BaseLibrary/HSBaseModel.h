//
//  HSBaseModel.h
//  Learnning
//
//  Created by lss521 on 2020/4/24.
//  Copyright © 2020 lss521. All rights reserved.
//

//#import "JSONModel.h"
#import <Foundation/Foundation.h>

typedef void(^Completed)(id _Nullable responseObj,NSError * _Nonnull error);

NS_ASSUME_NONNULL_BEGIN

@interface HSBaseModel : NSObject

///无缓存的get方法实现
+ (void)getDataWith:(NSString*)url
         withParams:(NSDictionary*)params
      withCompleted:(Completed)complete;
///有缓存的get方法实现
+ (void)getDataWith:(NSString*)url
         withParams:(NSDictionary*)params
          withCache:(BOOL)isSave
      withCompleted:(Completed)complete;
///无缓存的post方法实现
+ (void)postDataWith:(NSString*)url
          withParams:(NSDictionary*)params
       withCompleted:(Completed)complete;
///有缓存的post方法实现
+ (void)postDataWith:(NSString*)url
          withParams:(NSDictionary*)params
           withCache:(BOOL)isSave
       withCompleted:(Completed)complete;

@end

NS_ASSUME_NONNULL_END
