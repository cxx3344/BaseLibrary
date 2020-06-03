//
//  HSPagingHelper.m
//  MVCLearning
//
//  Created by lss521 on 2020/5/10.
//  Copyright © 2020 lss521. All rights reserved.
//

#import "HSPagingHelper.h"

@implementation HSPagingHelper
- (instancetype)init{
    self = [super init];
    if (self) {
        self.pageIndex = 1;
        self.pageSize = 20;
    }
    return self;
}
///便捷获取实例(非单例)
+ (instancetype)shareInstance{
    return [[HSPagingHelper alloc]init];
}

@end
