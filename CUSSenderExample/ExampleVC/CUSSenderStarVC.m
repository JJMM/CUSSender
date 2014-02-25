//
//  CUSSenderStarVC.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderStarVC.h"


@interface CUSSenderStarVC ()

@end

@implementation CUSSenderStarVC


-(CALayer *)createLayer{
    return [[CUSSenderStarLayer alloc]init];
}

-(NSString *)getBackgroundImageName{
    return @"CUSSenderWeixinBG.jpg";
}
@end
