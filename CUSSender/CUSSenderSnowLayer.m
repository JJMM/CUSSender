//
//  CUSSenderSnowLayer.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderSnowLayer.h"

@implementation CUSSenderSnowLayer

- (id)init
{
    NSMutableArray *snowArray = [NSMutableArray array];
    for (int i = 1; i <= 13; i++) {
        [snowArray addObject:[NSString stringWithFormat:@"CUSSenderSnow%2i.png",i]];
    }
    self = [self initWithImageNameArray:snowArray];

    return self;
}

-(CAEmitterCell *)createSubLayer:(UIImage *)image{
    CAEmitterCell *cellLayer = [CAEmitterCell emitterCell];
    
    cellLayer.birthRate		= 5.0;
    cellLayer.lifetime		= 20;
	
	cellLayer.velocity		= -100;				// falling down slowly
	cellLayer.velocityRange = 0;
	cellLayer.yAcceleration = 2;
    cellLayer.emissionRange = 0.5 * M_PI;		// some variation in angle
    cellLayer.spinRange		= 0.5 * M_PI;		// slow spin
    cellLayer.scale = 0.2;
    cellLayer.contents		= (id)[image CGImage];

//    cellLayer.color			= [[UIColor colorWithRed:0.600 green:0.658 blue:0.743 alpha:1.000] CGColor];
    cellLayer.color			= [[UIColor whiteColor] CGColor];
    
    return cellLayer;
}
@end
