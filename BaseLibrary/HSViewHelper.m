//
//  HSViewHelper.m
//  MVCLearning
//
//  Created by lss521 on 2020/5/10.
//  Copyright © 2020 lss521. All rights reserved.
//

#import "HSViewHelper.h"

@implementation HSViewHelper
///Button的默认创建
+ (UIButton*)defaultButton{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor lightGrayColor]];
    [button.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
    button.clipsToBounds = YES;
    button.userInteractionEnabled = YES;
    return button;
}
///Label的默认创建
+ (UILabel*)defaultLabel {
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectZero];
    label.textColor = [UIColor blackColor];
    label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByTruncatingTail;
    label.font = [UIFont systemFontOfSize:14.0];
    label.clipsToBounds = YES;
    label.userInteractionEnabled = YES;
    return label;
}
///ImageView的默认创建
+ (UIImageView*)defaultImageView{
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectZero];
    imageView.clipsToBounds = YES;
    imageView.userInteractionEnabled = YES;
    return imageView;
}
///UITextField的默认创建
+ (UITextField*)defaultTextField{
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectZero];
    textField.backgroundColor = [UIColor clearColor];
    textField.textAlignment = NSTextAlignmentLeft;
    textField.textColor = [UIColor blackColor];
    textField.font = [UIFont systemFontOfSize:14.0];
    textField.borderStyle = UITextBorderStyleNone;
    textField.placeholder = @"";
    return textField;
}
///View的默认创建
+ (UIView*)defaultView{
    UIView *view = [[UIView alloc]initWithFrame:CGRectZero];
    view.backgroundColor = [UIColor clearColor];
    view.userInteractionEnabled = YES;
    view.clipsToBounds = YES;
    return view;
}
///UIScrollView的默认创建
+ (UIScrollView*)defaultScrollView{
    UIScrollView * scrollView = [[UIScrollView alloc]initWithFrame:CGRectZero];
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.pagingEnabled = NO;
    scrollView.bounces = YES;
    scrollView.userInteractionEnabled = YES;
    if (@available(iOS 11.0, *)) {
        scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
    } else {
    }
    return scrollView;
}


///UITableView的默认创建
+ (UITableView*)defaultTableView{
    UITableView *tableView = [HSViewHelper defaultTableViewWith:UITableViewStylePlain];
    return tableView;
}
///UITableView的类型创建
+ (UITableView*)defaultTableViewWith:(UITableViewStyle)style{
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectZero style:style];
    tableView.tableFooterView = [UIView new];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, HSWidth, 0.01)];
    tableView.tableHeaderView = view;
    tableView.backgroundColor = [UIColor whiteColor];
    return tableView;
}


///UICollectionView的默认创建
+ (UICollectionView*)defaultCollectionView{
   
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    //最小行间距(默认为10)
    flowLayout.minimumLineSpacing = 10;
    //最小item间距（默认为10）
    flowLayout.minimumInteritemSpacing = 10;
    //设置senction的内边距
    flowLayout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    flowLayout.headerReferenceSize = CGSizeZero;
    flowLayout.footerReferenceSize = CGSizeZero;
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
    return collectionView;
}

///UICollectionView的自定义创建
+ (UICollectionView*)defaultCollectionViewWithFlowLayout:(UICollectionViewFlowLayout*)flowLayout{
   UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
   collectionView.backgroundColor = [UIColor whiteColor];
   return collectionView;
}




@end
