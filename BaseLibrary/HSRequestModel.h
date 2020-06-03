//
//  HSBaseRequestModel.h
//  MVCLearning
//
//  Created by lss521 on 2020/5/10.
//  Copyright © 2020 lss521. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HSRequestModel : NSObject
///状态类型1(可选)
@property (nonatomic, copy) NSString * stateType;
///状态类型2(可选)
@property (nonatomic, copy) NSString * statusType;
///请求参数(可选)
@property (nonatomic, copy) NSDictionary * params;
///请求接口(可选)
@property (nonatomic, copy) NSString * urlString;
///便捷获取实例(非单例)
+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
