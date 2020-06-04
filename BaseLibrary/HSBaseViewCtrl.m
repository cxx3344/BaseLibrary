//
//  HSBaseViewCtrl.m
//  DevelopConsultant
//
//  Created by lss521 on 2020/5/20.
//  Copyright © 2020 lss521. All rights reserved.
//

#import "HSBaseViewCtrl.h"
///视图导航栏标题
NSString * const HSPageViewTitleKey = @"HSPageViewTitleKey";
///视图所需数据id
NSString * const HSPageViewInfoIdKey = @"HSPageViewInfoIdKey";
///视图所需数据信息
NSString * const HSPageViewInfoKey = @"HSPageViewInfoKey";
///视图所需其他数据信息
NSString * const HSPageViewOhterInfoKey = @"HSPageViewOhterInfoKey";


@interface HSBaseViewCtrl ()

@end

@implementation HSBaseViewCtrl


#pragma mark - System Methods/LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    if (@available(iOS 13.0, *)) {
        self.view.backgroundColor = [UIColor systemGroupedBackgroundColor];
    } else {
        self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    }
}



#pragma mark - Intial Methods


#pragma mark - Target Methods



#pragma mark - Delegate Methods




#pragma mark - LoadData Methods




#pragma mark - Private Methods





#pragma mark - Setter Getter Methods



#pragma mark - LifeCycle-dealloc
- (void)dealloc
{
    NSLog(@"%s - 释放了!",object_getClassName(self));
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
