//
//  CUSSenderKissVC.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderKissVC.h"

@interface CUSSenderKissVC ()

@end

@implementation CUSSenderKissVC

-(CALayer *)createLayer{
    return [[CUSSenderKissLayer alloc]init];
}

-(NSString *)getBackgroundImageName{
    return @"CUSSenderWeixinBG.jpg";
}
@end
