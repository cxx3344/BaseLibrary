//
//  HSTool.h
//  Learnning
//
//  Created by lss521 on 2020/5/5.
//  Copyright © 2020 lss521. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HSTool : NSObject
///获取Document地址
+ (NSString*)getDocumentPath;
///获取本地Cache地址
+ (NSString*)getCachePath;
///获取本地Temp临时地址
+ (NSString*)getTempPath;
///获取不同模式图片
+(UIImage *)getdarkModeImage:(NSString *)imgName
             traitcollection:(UITraitCollection *)trait;
/// 通过颜色生成图片
+ (UIImage *)imageWithColor:(UIColor *)color;
/// 获取Assets中的图片
+ (UIImage*)hs_imageNamed:(NSString*)imageName;

@end

NS_ASSUME_NONNULL_END
