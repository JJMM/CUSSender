//
//  CUSLayerVC.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//
#import "CUSLayerVC.h"

@interface CUSLayerVC ()

@end

@implementation CUSLayerVC
@synthesize rootLayer;

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.rootLayer = [self createLayer];
    [self.view.layer addSublayer:self.rootLayer];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    if (self.rootLayer) {
        [self.rootLayer removeFromSuperlayer];
    }
}

-(CALayer *)createLayer{
    return nil;
}

-(NSString *)getBackgroundImageName{
    return nil;
}


-(void)viewDidLoad{
    [super viewDidLoad];
    if ([self getBackgroundImageName]) {
        
        UIImage *image = [UIImage imageNamed:[self getBackgroundImageName]];
        UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        
        CGFloat rate = 320.0 / image.size.width;
        
        imageView.frame = CGRectMake(0, self.view.frame.size.height - image.size.height*rate, image.size.width*rate, image.size.height*rate);
        imageView.tag = 12345;
        [self.view addSubview:imageView];
    }
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    if ([self getBackgroundImageName]) {
        UIImageView *imageView = (UIImageView *)[self.view viewWithTag:12345];
        UIImage *image = imageView.image;
        CGFloat rate = 320.0 / image.size.width;
        
        imageView.frame = CGRectMake(0, self.view.frame.size.height - image.size.height*rate, image.size.width*rate, image.size.height*rate);
    
    }
}

@end
