//
//  CUSSenderProsperityVC.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderProsperityVC.h"

@interface CUSSenderProsperityVC ()

@end

@implementation CUSSenderProsperityVC

-(CALayer *)createLayer{
    return [[CUSSenderGoldLayer alloc]init];
}

-(NSString *)getBackgroundImageName{
    return @"CUSSenderWeixinBG.jpg";
}
@end
