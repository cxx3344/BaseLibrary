//
//  HSBaseModel.m
//  Learnning
//
//  Created by lss521 on 2020/4/24.
//  Copyright © 2020 lss521. All rights reserved.
//

#import "HSBaseModel.h"

@implementation HSBaseModel

+(void)getDataWith:(NSString *)url
        withParams:(NSDictionary *)params
     withCompleted:(Completed)complete{}

+ (void)getDataWith:(NSString*)url
         withParams:(NSDictionary*)params
          withCache:(BOOL)isSave
      withCompleted:(Completed)complete{}

+(void)postDataWith:(NSString *)url
         withParams:(NSDictionary *)params
      withCompleted:(Completed)complete{}

+ (void)postDataWith:(NSString*)url
          withParams:(NSDictionary*)params
           withCache:(BOOL)isSave
       withCompleted:(Completed)complete{}
@end
