//
//  HSBaseView.m
//  DevelopConsultant
//
//  Created by lss521 on 2020/5/23.
//  Copyright © 2020 lss521. All rights reserved.
//

#import "HSBaseView.h"

@implementation HSBaseView
+ (instancetype)shareInstance{
    HSBaseView * view = [[HSBaseView alloc]initWithFrame:CGRectZero];
    return view;
}
#pragma mark - Intial Methods
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView{
    
}

#pragma mark - LoadData Methods




#pragma mark - Private Methods





#pragma mark - Setter Getter Methods




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
