//
//  UIImage+Tool.m
//  UIImageToolDemo
//
//  Created by Ru on 26/4/16.
//  Copyright © 2016年 Ru. All rights reserved.
//

#import "UIImage+Tool.h"

@implementation UIImage (Tool)

/**
 *  将图片裁剪成指定背景颜色的圆形边框
 *
 *  @param image       原始图片
 *  @param borderWidth 边框的宽
 *  @param color       边框的颜色
 *
 *  @return 裁剪后的图片
 */


+ (UIImage *)clipImageToRoundFrame:(UIImage *)image borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)color
{
    
    //图片的尺寸
    CGFloat imageW = image.size.width;
    CGFloat imageH = image.size.height;
    
    
    //绘图的size
    CGRect frame = CGRectMake(0, 0, imageW+ 2*borderWidth, imageH+2*borderWidth);
    
    //开启位图上下文
    UIGraphicsBeginImageContext(frame.size);
    
    
    //外圆环路径
    UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:frame];
    [color set];
    [ovalPath fill];
    
    //内部圆的边框
    CGRect innerFrame = CGRectMake(borderWidth, borderWidth, imageW, imageH);
    
    //设置剪切边
    UIBezierPath *clipPath = [UIBezierPath bezierPathWithOvalInRect:innerFrame];
    [clipPath addClip];
    //绘制图形
    [image drawInRect:innerFrame];
    
    //获得绘制的图片
    UIImage *clipedImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //结束图片上下文
    UIGraphicsEndImageContext();
    
    return clipedImage;
}
@end
