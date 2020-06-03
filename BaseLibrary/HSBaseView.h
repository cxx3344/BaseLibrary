//
//  HSBaseView.h
//  DevelopConsultant
//
//  Created by lss521 on 2020/5/23.
//  Copyright © 2020 lss521. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HSBaseView : UIView
+ (instancetype)shareInstance;
- (void)initView;

@end

NS_ASSUME_NONNULL_END
