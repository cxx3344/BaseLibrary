//
//  HSPollingHelper.h
//  Cocospod0521Demo
//  参考：EGAnalyticsPollingHelper
//  Created by farben on 2020/6/10.
//  Copyright © 2020 farben. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
///轮询定时器
@interface HSPollingHelper : NSObject
/// 获取实例
+ (instancetype)shareInstance;
/// 添加任务
- (void)addTask:(dispatch_block_t)block;
/// 开始轮询
- (void)start;
/// 开始轮询，指定时间间隔
- (void)startWithTimeInterval:(NSTimeInterval)timeInterval;
/// 停止轮询
- (void)stop;

@end

NS_ASSUME_NONNULL_END
