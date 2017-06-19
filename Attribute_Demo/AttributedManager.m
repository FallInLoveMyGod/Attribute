//
//  AttributedManager.m
//  Attribute_Demo
//
//  Created by 田耀琦 on 2017/6/19.
//  Copyright © 2017年 田耀琦. All rights reserved.
//

#import "AttributedManager.h"
/*
 *    富文本使用说明
 *    参考：http://blog.csdn.net/reylen/article/details/41208747
**/

@implementation AttributedManager

/*
使用方法：
为某一范围内文字设置多个属性
- (void)setAttributes:(NSDictionary *)attrs range:(NSRange)range;
为某一范围内文字添加某个属性
- (void)addAttribute:(NSString *)name value:(id)value range:(NSRange)range;
为某一范围内文字添加多个属性
- (void)addAttributes:(NSDictionary *)attrs range:(NSRange)range;
移除某范围内的某个属性
- (void)removeAttribute:(NSString *)name range:(NSRange)range;
2.     常见的属性及说明

NSFontAttributeName
字体
NSParagraphStyleAttributeName
段落格式
NSForegroundColorAttributeName
字体颜色
NSBackgroundColorAttributeName
背景颜色
NSStrikethroughStyleAttributeName
删除线格式
NSUnderlineStyleAttributeName
下划线格式
NSStrokeColorAttributeName
删除线颜色
NSStrokeWidthAttributeName
删除线宽度
NSShadowAttributeName
阴影
 */

@end
