//
//  ViewController.m
//  未付款动画
//
//  Created by 云媒 on 16/10/12.
//  Copyright © 2016年 云媒. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //未付款 文字动画
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    label.text = @"未付款";
    label.textColor = [UIColor redColor];
    [label.layer addAnimation:[self opacityForever_Animation:0.5] forKey:nil];
    [self.view addSubview:label];
}

-(CABasicAnimation *)opacityForever_Animation:(float)time
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];//必须写opacity才行。
    animation.fromValue = [NSNumber numberWithFloat:1.0f];//透明度(不透明)
    animation.toValue = [NSNumber numberWithFloat:0.0f];//这是透明度(透明)。
    animation.autoreverses = YES;
    animation.duration = time;
    animation.repeatCount = MAXFLOAT;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];///没有的话是均匀的动画。
    return animation;
}

@end
