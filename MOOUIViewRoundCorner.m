//
//  MOOUIViewRoundCorner.m
//  CodeCreateImage
//
//  Created by moosoul on 15/11/27.
//  Copyright © 2015年 moosoul. All rights reserved.
//

#import "MOOUIViewRoundCorner.h"

@implementation UIView (MOOUIViewRoundCorner)

#pragma mark - 添加圆角纯色背景
- (void)moo_addRoundCornerWithBGColor:(UIColor *)color andRadius:(CGFloat)radius
{
    UIImageView *imageView = [self createRoundCornerRadiusBGImageView:radius];
    imageView.backgroundColor = color;
}

#pragma mark - 添加圆角背景图片
- (void)moo_addRoundCornerWithBGImage:(UIImage *)image andRadius:(CGFloat)radius;
{
    UIImageView *imageView = [self createRoundCornerRadiusBGImageView:radius];
    imageView.image = image;
}

#pragma mark - 创建圆角的imageView
- (UIImageView *)createRoundCornerRadiusBGImageView:(CGFloat)radius
{
    // 0.清除当前View的背景色
    self.backgroundColor = [UIColor clearColor];
    
    // 1.创建一个UIImageView，并添加到当前View层上
    UIImageView *imageView = [[UIImageView alloc] init];
    [self addSubview:imageView];
    
    // 2.将该UIImageView置于当前View的底层
    [self sendSubviewToBack:imageView];
    
    // 3.设置imageView的圆角以及圆角半径
    imageView.layer.cornerRadius = radius;
    imageView.layer.masksToBounds = YES;
    
    // 4.添加约束
    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(imageView);
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[imageView]-0-|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[imageView]-0-|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDictionary]];
    // 5.返回imageView
    return imageView;
}


@end