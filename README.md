# MOORoundCorner
通过Objc的分类方法解决在iOS开发中给控件添加圆角的之后导致界面UI的顿卡(FPS瞬间小于30甚至更低)

1、添加圆角纯色背景

`- (void)moo_addRoundCornerWithBGColor:(UIColor *)color andRadius:(CGFloat)radius;`

`[view moo_addRoundCornerWithBGColor:[UIColor redColor] andRadius:5.0f]`

2、添加圆角图片背景

`- (void)moo_addRoundCornerWithBGImage:(UIImage *)image andRadius:(CGFloat)radius;`

`[view moo_addRoundCornerWithBGImage:image andRadius:5.0f]`
