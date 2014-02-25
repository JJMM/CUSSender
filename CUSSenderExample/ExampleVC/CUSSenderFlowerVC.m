//
//  CUSSenderFlowerVC.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-25.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderFlowerVC.h"

@interface CUSSenderFlowerVC ()

@end

@implementation CUSSenderFlowerVC

-(CALayer *)createLayer{
    return [[CUSSenderFlowerLayer alloc]init];
}

-(NSString *)getBackgroundImageName{
    return @"CUSSenderFlowerBG.jpg";
}

@end
