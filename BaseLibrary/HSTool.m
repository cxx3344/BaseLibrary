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

///判断文件夹/文件是否存在
+ (BOOL)checkFileExist:(NSString*)filePath{
    NSFileManager *fm = [NSFileManager defaultManager];
    BOOL isExist = [fm fileExistsAtPath:filePath];
    return isExist;
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
///格式化接口上传参数
+ (NSDictionary*)formatUploadPropertyWith:(NSDictionary*)dic{
    NSError *jsonError;
    NSData* jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];
    NSString* jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSData *objectData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:objectData
                                                            options:NSJSONReadingMutableContainers
                                                              error:&jsonError];
    if (nil == jsonDic) {
        jsonDic = @{};
    }
    return jsonDic;
}
///中文网址编码
+ (NSString*)chineseUrlEncodeWith:(NSString*)urlStr{
    if (@available(iOS 9.0, *)) {
        return [urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    }else{
        return [urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    }

}
///中文网址反编码
+ (NSString*)chineseUrlRemoveEncodeWith:(NSString*)urlStr{
    if (@available(iOS 9.0, *)) {
        return [urlStr stringByRemovingPercentEncoding];
    }else{
        return [urlStr stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    }
}
///给View添加圆角
+ (void)setCornerRadius:(CGFloat)radius
                 corner:(UIRectCorner)corner
                forView:(UIView*)view{
   CAShapeLayer *maskLayer = [CAShapeLayer layer];
   maskLayer.path = [UIBezierPath bezierPathWithRoundedRect:view.bounds
                                          byRoundingCorners:corner
                                                cornerRadii:(CGSize){radius, radius}].CGPath;
   view.layer.masksToBounds = YES;
   view.layer.mask = maskLayer;
}
/**
 获取视频时长
 */
+ (CGFloat)get_videoTotalWith:(NSURL *)videoURL
{
    NSDictionary *opts = [NSDictionary dictionaryWithObject:[NSNumber numberWithBool:NO]
                                                     forKey:AVURLAssetPreferPreciseDurationAndTimingKey];
    AVURLAsset *urlAsset = [AVURLAsset URLAssetWithURL:videoURL options:opts];
    float second = 0;
    second = urlAsset.duration.value/urlAsset.duration.timescale;
    return second;
}
/**
 获取视频缩略图
 */
+ (UIImage *)get_videoThumbImage:(NSURL *)videoURL
{
    NSDictionary *opts = [NSDictionary dictionaryWithObject:[NSNumber numberWithBool:NO] forKey:AVURLAssetPreferPreciseDurationAndTimingKey];
    AVURLAsset *urlAsset = [AVURLAsset URLAssetWithURL:videoURL options:opts];
    AVAssetImageGenerator *generator = [AVAssetImageGenerator assetImageGeneratorWithAsset:urlAsset];
    generator.appliesPreferredTrackTransform = YES;
    CMTime actualTime;
    NSError *error = nil;
    CGImageRef img = [generator copyCGImageAtTime:CMTimeMake(0, 600) actualTime:&actualTime error:&error];
    if (error) {
        return nil;
    }
    return [UIImage imageWithCGImage:img];

}










@end
