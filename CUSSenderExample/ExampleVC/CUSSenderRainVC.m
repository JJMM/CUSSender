//
//  CUSSenderRainVC.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderRainVC.h"

@interface CUSSenderRainVC ()

@end

@implementation CUSSenderRainVC

-(CALayer *)createLayer{
    return [[CUSSenderRainLayer alloc]init];
}

-(NSString *)getBackgroundImageName{
    return @"CUSSenderRainBG.jpg";
}
@end
