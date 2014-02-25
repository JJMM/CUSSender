//
//  CUSSenderSnowVC.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderSnowVC.h"

@interface CUSSenderSnowVC ()

@end

@implementation CUSSenderSnowVC

-(CALayer *)createLayer{
    return [[CUSSenderSnowLayer alloc]init];
}

-(NSString *)getBackgroundImageName{
    return @"CUSSenderSnowBG.jpg";
}
@end
