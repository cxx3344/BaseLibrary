//
//  HSPublicHeader.h
//  Pods
//
//  Created by farben on 2020/6/3.
//

#ifndef HSPublicHeader_h
#define HSPublicHeader_h


///设备型号判断
#define Device_Width  [[UIScreen mainScreen] bounds].size.width//获取屏幕宽高
#define Device_Height [[UIScreen mainScreen] bounds].size.height
#define NSVH (MAX(Device_Width, Device_Height)  >= 812 ? 44 : 20)
#define NAVH (MAX(Device_Width, Device_Height)  >= 812 ? 88 : 64)
#define TABBARH (MAX(Device_Width, Device_Height)  >= 812 ? 83 : 49)

#define DefaultSpace 100


#define ISIphoneX (Device_Height >=812 ? YES:NO)

#define LXColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define LXRandomColor LXColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

#define SystemVersion [UIDevice currentDevice].systemVersion

#define NotiKey  NSStringFromClass([self class])


#define LineDColor   HSRGBA(0, 0, 0, 1)

///获取当前屏幕宽高
#define HSWidth      [UIScreen mainScreen].bounds.size.width
#define HSHeight     [UIScreen mainScreen].bounds.size.height
#define KEYWINDOW    [[UIApplication sharedApplication]keyWindow]

#define scale5W(w)          w / (double)320 * HSWidth
#define scale5H(h)          h / (double)568 * HSHeight

#define scaleW(w)           w / (double)375 * HSWidth
#define scaleH(h)           h / (double)667 * HSHeight

#define scalePW(w)          w / (double)414 * HSWidth
#define scalePH(h)          h / (double)736 * HSHeight

#define scaleXW(w)          w / (double)375 * HSWidth
#define scaleXH(h)          h / (double)812 * HSHeight



///系统常用单例简写宏
#define NSNC    [NSNotificationCenter defaultCenter]
#define NSUD    [NSUserDefaults standardUserDefaults]

///获取默认图片
#define D_IMAGE(image)             [UIImage imageNamed:image]
///获取原始图片
#define OrignalImage(imageName) [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]

///URL图片地址
//#define URL_Image(obj) [NSURL URLWithString:[obj stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]
#define URL_Image(obj) [NSURL URLWithString:[obj stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]]

#define ImageURL(x) [NSString stringWithFormat:@"%@%@",BASE_IMAGE_IP,x]

///使用Masonry三方库需要加入如下宏
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
#define SS(strongSelf)  __strong __typeof(&*self) strongSelf = self;

//weak strong self for retain cycle
#define WEAK_SELF __weak typeof(self)weakSelf = self
#define STRONG_SELF __strong typeof(weakSelf)self = weakSelf

///字符串判空
#define SAFE_STRING(string) (string != nil) ? (string) : (string = @"")
#define IS_EMPTY_STRING(string) (string == nil ||[string isEqualToString:@""])? YES : NO
/// 判断 字符串是否等为null
#define IS_NULL_STRING(result) ([result isKindOfClass:[NSNull class]])? YES : NO

#define StringEqual(a,b) [a isEqualToString: b]

///字体大小设置
#define FONT_SIZE(fontsize)             [UIFont systemFontOfSize:fontsize]

///字体大小设置
#define FONT_SYSTEM(fontsize)          [UIFont systemFontOfSize:fontsize]
#define FONT_BOLD(size)                [UIFont boldSystemFontOfSize:size]
///字体类型及大小设置
#define FONT_NAME(fontname,fontsize)   [UIFont fontWithName:fontname size:fontsize]

///颜色设置
#define HSRGBA(r,g,b,a)             [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define HSRGB(r,g,b)                HSRGBA(r,g,b,1.0)

#define BGAColor(a) [UIColor colorWithWhite:0.3 alpha:a]


// 随机颜色
#define HSRandomColor                    ColorWithRGB(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))

#define Date_YMD_Format @"yyyy-MM-dd"

#define Date_YMDHM_Format @"yyyy-MM-dd HH:mm"

#define Date_YMDHMS_Format @"yyyy-MM-dd HH:mm:ss"

#define EqualString(string1,string2) [string1 isEqualToString:string2]

///设置下一界面的返回按钮
#define BACKITEM {if(1) \
{ \
[self.navigationItem setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]]; \
} \
else{ \
\
[self.navigationItem setBackBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"] style:(UIBarButtonItemStylePlain) target:nil action:nil]];\
} \
}


#endif /* HSPublicHeader_h */
