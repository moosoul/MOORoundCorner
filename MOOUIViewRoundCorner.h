//
//  MOOUIViewRoundCorner.h
//  CodeCreateImage
//
//  Created by moosoul on 15/11/27.
//  Copyright © 2015年 moosoul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MOOUIViewRoundCorner)

/**
 *  添加圆角通过纯色背景
 *
 *  @param color  颜色
 *  @param radius 圆角半径
 */
- (void)moo_addRoundCornerWithBGColor:(UIColor *)color andRadius:(CGFloat)radius;

/**
 *  添加圆角通过图片image
 *
 *  @param image  图片
 *  @param radius 圆角半径
 */
- (void)moo_addRoundCornerWithBGImage:(UIImage *)image andRadius:(CGFloat)radius;

@end



