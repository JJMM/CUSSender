//
//  CUSSenderFlowerLayer.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-25.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderFlowerLayer.h"

@implementation CUSSenderFlowerLayer

- (id)init
{
    NSMutableArray *snowArray = [NSMutableArray array];
    for (int i = 1; i <= 13; i++) {
        [snowArray addObject:[NSString stringWithFormat:@"CUSSenderFlower%i.png",i]];
    }
    self = [self initWithImageNameArray:snowArray];
    
    return self;
}

-(CAEmitterCell *)createSubLayer:(UIImage *)image{
    CAEmitterCell *cellLayer = [CAEmitterCell emitterCell];
    cellLayer.birthRate		= 3;
    cellLayer.lifetime		= 20;
	
	cellLayer.velocity		= -80;				// falling down slowly
	cellLayer.velocityRange = 20;
	cellLayer.yAcceleration = 2;
    cellLayer.emissionRange = 0.5 * M_PI;		// some variation in angle
    cellLayer.spinRange		= 0.5 * M_PI;		// slow spin
    cellLayer.scale = 0.2;
    cellLayer.scaleRange = 0.1;
    cellLayer.contents		= (id)[image CGImage];
    
    cellLayer.color			= [[UIColor whiteColor] CGColor];
    cellLayer.redRange = 1.0;
    cellLayer.greenRange = 1.0;
    cellLayer.blueRange = 1.0;
    
    return cellLayer;
}
@end
