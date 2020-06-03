//
//  HSTool.m
//  Learnning
//
//  Created by lss521 on 2020/5/5.
//  Copyright © 2020 lss521. All rights reserved.
//

#import "HSTool.h"

@implementation HSTool
///获取Document地址
+ (NSString *)getDocumentPath{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentFilePath = paths.firstObject;
    return documentFilePath;
}
///获取本地Cache地址
+ (NSString*)getCachePath{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *cachePath = paths.firstObject;
    return cachePath;
}
///获取本地Temp临时地址
+ (NSString*)getTempPath{
    NSString *tempPath = NSTemporaryDirectory();
    return tempPath;
}
///获取不同模式图片
+(UIImage *)getdarkModeImage:(NSString *)imgName
             traitcollection:(UITraitCollection *)trait{
    if (@available(iOS 13.0, *)) {
        UIImage * imgs = [UIImage imageNamed:imgName inBundle:nil compatibleWithTraitCollection:[UITraitCollection traitCollectionWithUserInterfaceStyle:UIUserInterfaceStyleLight]];
        [imgs.imageAsset registerImage:[UIImage imageNamed:imgName] withTraitCollection:[UITraitCollection traitCollectionWithUserInterfaceStyle:UIUserInterfaceStyleDark]];
        return [imgs.imageAsset imageWithTraitCollection:trait];
    }else{
        return [UIImage imageNamed:imgName];
    }
}

/// 通过颜色生成图片
+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
/// 获取Assets中的图片
+ (UIImage*)hs_imageNamed:(NSString*)imageName{
    UIImage *image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAutomatic];
    return image;
}

@end
