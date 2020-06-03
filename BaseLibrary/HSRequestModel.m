//
//  HSBaseRequestModel.m
//  MVCLearning
//
//  Created by lss521 on 2020/5/10.
//  Copyright © 2020 lss521. All rights reserved.
//

#import "HSRequestModel.h"

@implementation HSRequestModel
- (instancetype)init{
    self = [super init];
    if (self) {
        self.stateType = @"";
        self.statusType = @"";
        self.params = @{};
        self.urlString = @"";
    }
    return self;
}

+ (instancetype)shareInstance{
    return [[HSRequestModel alloc]init];
}
@end
