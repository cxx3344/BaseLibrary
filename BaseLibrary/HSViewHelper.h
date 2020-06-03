//
//  HSViewHelper.h
//  MVCLearning
//
//  Created by lss521 on 2020/5/10.
//  Copyright © 2020 lss521. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

///获取当前屏幕宽高
#define HSWidth      [UIScreen mainScreen].bounds.size.width
#define HSHeight     [UIScreen mainScreen].bounds.size.height

NS_ASSUME_NONNULL_BEGIN

@interface HSViewHelper : NSObject

///UITextField的默认创建
+ (UITextField*)defaultTextField;

///UIView的默认创建
+ (UIView*)defaultView;

///Button的默认创建
+ (UIButton*)defaultButton;

///Label的默认创建
+ (UILabel*)defaultLabel ;

///ImageView的默认创建
+ (UIImageView*)defaultImageView;

///UIScrollView的默认创建
+ (UIScrollView*)defaultScrollView;

///UITableView的默认创建
+ (UITableView*)defaultTableView;

///UITableView的类型创建
+ (UITableView*)defaultTableViewWith:(UITableViewStyle)style;

///UICollectionView的默认创建
+ (UICollectionView*)defaultCollectionView;

///UICollectionView的自定义创建
+ (UICollectionView*)defaultCollectionViewWithFlowLayout:(UICollectionViewFlowLayout*)flowLayout;

#pragma mark -- 其他常用视图



@end

NS_ASSUME_NONNULL_END
