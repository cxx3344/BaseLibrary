//名称：HSPollingHelper.m
//创建者：farben
//创建时间：2020/6/10
//描述：
//  HSPollingHelper.m
//  Cocospod0521Demo
//
//  Created by farben on 2020/6/10.
//  Copyright © 2020 farben. All rights reserved.
//

#import "HSPollingHelper.h"
@interface HSPollingHelper()

@property (nonatomic, copy) dispatch_block_t taskBlock;
@property (nonatomic, assign) BOOL isStop;
@property (nonatomic, assign) NSTimeInterval timeInterval;

@end


@implementation HSPollingHelper
{
    dispatch_source_t pollingHelper;
}

#pragma mark - System Methods/LifeCycle
+ (instancetype)shareInstance{
    HSPollingHelper *helper = [[HSPollingHelper alloc]init];
    return helper;
}
- (instancetype)init {
    if (self = [super init]) {
        self.timeInterval =  5; // 默认15分钟
        [self initSourceTimer];
    }
    return self;
}

#pragma mark - Init Methods
- (void)initSourceTimer {
    //创建全局队列
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    /** 使用全局队列创建计时器
     * para1: DISPATCH_SOURCE_TYPE_TIMER 为定时器类型
     * para2-3: 中间两个参数对定时器无用
     * para4: 最后为在什么调度队列中使用
     */
    pollingHelper = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    /** 设置定时器
    * para2: 任务开始时间
    * para3: 任务的间隔
    * para4: 可接受的误差时间，设置0即不允许出现误差
    * Tips: 单位均为纳秒
    */
    dispatch_source_set_timer(pollingHelper, 0, self.timeInterval * NSEC_PER_SEC, 0);
}
#pragma mark - Public Methods
- (void)addTask:(dispatch_block_t)block {
    self.taskBlock = block;
    /** 设置定时器任务
    * 可以通过block方式
    * 也可以通过C函数方式
    */
    __weak typeof(self) weakSelf = self;
    dispatch_source_set_event_handler(pollingHelper,^{
        __strong typeof(self) self = weakSelf;
        if (self.taskBlock) {
            self.taskBlock();
        }
    });
}
- (void)start {
    self.isStop = NO;
    /**
     默认不启动，需要主动启动轮询
     重复启动会导致Crash，需要注意
     */
    dispatch_resume(pollingHelper);
}

- (void)startWithTimeInterval:(NSTimeInterval)timeInterval {
    self.timeInterval = timeInterval;
    if (!self.isStop) {
        [self stop];
        [self initSourceTimer];
        if (self.taskBlock) {
            [self addTask:self.taskBlock];
        }
    }
    [self start];
}

- (void)stop {
    self.isStop = YES;
    [self destoryTimer];
}
#pragma mark -- Private Methods
/**
 销毁定时器
 重复销毁同样会导致Crash，需要注意
 */
- (void)destoryTimer {
    dispatch_source_cancel(pollingHelper);
}
#pragma mark - LifeCycle-dealloc
- (void)dealloc
{
    NSLog(@"%s - 释放了!",object_getClassName(self));
}



@end

