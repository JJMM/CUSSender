//
//  CUSSenderKissLayer.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderKissLayer.h"

@implementation CUSSenderKissLayer
- (id)init
{
    self = [self initWithImageName:@"CUSSenderKiss.png"];
    
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
    //    cellLayer.spinRange		= 0.25 * M_PI;		// slow spin
//    cellLayer.scale = 0.3;
    cellLayer.contents		= (id)[image CGImage];
    
    cellLayer.color			= [[UIColor whiteColor] CGColor];
    return cellLayer;
}
@end
