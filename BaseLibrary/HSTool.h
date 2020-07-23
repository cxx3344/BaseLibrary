//
//  HSTool.h
//  Learnning
//
//  Created by lss521 on 2020/5/5.
//  Copyright © 2020 lss521. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface HSTool : NSObject
///获取Document地址
+ (NSString*)getDocumentPath;
///获取本地Cache地址
+ (NSString*)getCachePath;
///获取本地Temp临时地址
+ (NSString*)getTempPath;
///判断文件夹/文件是否存在
+ (BOOL)checkFileExist:(NSString*)filePath;
///获取不同模式图片
+(UIImage *)getdarkModeImage:(NSString *)imgName
             traitcollection:(UITraitCollection *)trait;
/// 通过颜色生成图片
+ (UIImage *)imageWithColor:(UIColor *)color;
/// 获取Assets中的图片
+ (UIImage*)hs_imageNamed:(NSString*)imageName;
///格式化接口上传参数
+ (NSDictionary*)formatUploadPropertyWith:(NSDictionary*)dic;
///中文网址编码
+ (NSString*)chineseUrlEncodeWith:(NSString*)urlStr;
///中文网址反编码
+ (NSString*)chineseUrlRemoveEncodeWith:(NSString*)urlStr;
///给View添加圆角
+ (void)setCornerRadius:(CGFloat)radius
                 corner:(UIRectCorner)corner
                forView:(UIView*)view;
///获取视频时长
+ (CGFloat)get_videoTotalWith:(NSURL *)videoURL;
///获取视频缩略图
+ (UIImage *)get_videoThumbImage:(NSURL *)videoURL;


@end

NS_ASSUME_NONNULL_END
