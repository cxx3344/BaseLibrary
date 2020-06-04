//
//  HSBaseViewCtrl.h
//  DevelopConsultant
//
//  Created by lss521 on 2020/5/20.
//  Copyright © 2020 lss521. All rights reserved.
//

#import <UIKit/UIKit.h>
//TODO:定义常用常量字段
///视图导航栏标题
extern NSString * _Nonnull const HSPageViewTitleKey;
///视图所需数据id
extern NSString * _Nonnull const HSPageViewInfoIdKey;
///视图所需数据信息
extern NSString * _Nonnull const HSPageViewInfoKey;
///视图所需其他数据信息
extern NSString * _Nonnull const HSPageViewOhterInfoKey;

NS_ASSUME_NONNULL_BEGIN

@interface HSBaseViewCtrl : UIViewController
///公共参数配置
@property (nonatomic, copy) NSDictionary * params;

@end

NS_ASSUME_NONNULL_END
