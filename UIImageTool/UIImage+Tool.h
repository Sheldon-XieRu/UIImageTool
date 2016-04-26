//
//  UIImage+Tool.h
//  UIImageToolDemo
//
//  Created by Ru on 26/4/16.
//  Copyright © 2016年 Ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Tool)


+ (UIImage *)clipImageToRoundFrame:(UIImage *)image borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)color;
@end
