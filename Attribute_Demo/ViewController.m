//
//  ViewController.m
//  Attribute_Demo
//
//  Created by 田耀琦 on 2017/6/19.
//  Copyright © 2017年 田耀琦. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong)NSString *mystring;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mystring = @"abcdefghijklmn";
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 200, 20)];
    [self.view addSubview:lab];
    lab.attributedText = [self testNSShadowAttributeName];

}

//  NSFontAttributeName。  字体
- (NSMutableAttributedString *)testNSParagraphStyleAttributeName {
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:self.mystring];
    [content addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, 5)];
    return content;
}

//  NSBackgroundColorAttributeName。 背景颜色
- (NSMutableAttributedString *)testNSBackgroundColorAttributeName {
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:self.mystring];
    [content addAttribute:NSBackgroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(5,8)];
    return content;
}

// NSStrikethroughStyleAttributeName。  删除线
- (NSMutableAttributedString *)testNSStrikethroughStyleAttributeName {
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:self.mystring];
    [content addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInt:NSUnderlineStyleSingle] range:NSMakeRange(5,8)];
    return content;
}

// NSUnderlineStyleAttributeName。 下划线
- (NSMutableAttributedString *)testNSUnderlineStyleAttributeName {
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:self.mystring];
    [content addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInt:NSUnderlineStyleDouble] range:NSMakeRange(5,5)];
    return content;
}


// NSStrokeColorAttributeName。  删除线颜色
- (NSMutableAttributedString *)testNSStrokeColorAttributeName {
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:self.mystring];
    [content addAttribute:NSStrokeColorAttributeName value:[UIColor blueColor] range:NSMakeRange(5,5)];
    return content;
}

// NSStrokeWidthAttributeName。   删除线宽度
- (NSMutableAttributedString *)testNSStrokeWidthAttributeName {
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:self.mystring];
    [content addAttribute:NSStrokeWidthAttributeName value:@2.0 range:NSMakeRange(5,5)];
    return content;
}

// NSShadowAttributeName。    阴影
- (NSMutableAttributedString *)testNSShadowAttributeName {
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:self.mystring];
    NSShadow *sha = [[NSShadow alloc] init];
    sha.shadowBlurRadius = 3;
    sha.shadowColor = [UIColor greenColor];
    [content addAttribute:NSShadowAttributeName value:sha range:NSMakeRange(5,5)];
    return content;
}


@end
