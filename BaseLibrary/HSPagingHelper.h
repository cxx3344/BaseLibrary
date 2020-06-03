//
//  HSPagingHelper.h
//  MVCLearning
//
//  Created by lss521 on 2020/5/10.
//  Copyright © 2020 lss521. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HSPagingHelper : NSObject
@property (nonatomic, assign) NSInteger  pageIndex;
@property (nonatomic, assign) NSInteger  pageSize;

///便捷获取实例(非单例)
+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
