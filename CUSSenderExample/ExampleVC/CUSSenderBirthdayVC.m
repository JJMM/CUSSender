//
//  CUSSenderBirthdayVC.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderBirthdayVC.h"

@interface CUSSenderBirthdayVC ()

@end

@implementation CUSSenderBirthdayVC

-(CALayer *)createLayer{
    return [[CUSSenderBirthdayLayer alloc]init];
}

-(NSString *)getBackgroundImageName{
    return @"CUSSenderWeixinBG.jpg";
}
@end
