//
//  CUSSenderFallLayer.m
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import "CUSSenderFallLayer.h"

@interface CUSSenderFallLayer()
@property(nonatomic,strong)NSArray *imageNameArray;
@end

@implementation CUSSenderFallLayer
@synthesize imageNameArray = _imageNameArray;

- (id)initWithImageName:(NSString *)imageName{
    return [self initWithImageNameArray:[NSArray arrayWithObject:imageName]];
}

- (id)initWithImageNameArray:(NSArray *)imageNameArray{
    self = [super init];
    if (self) {
        self.imageNameArray = imageNameArray;
        [self initializeValue];
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        [self initializeValue];
    }
    return self;
}

-(void)initializeValue{
    // Configure the particle emitter to the top edge of the screen
    CAEmitterLayer *parentLayer = self;
    parentLayer.emitterPosition = CGPointMake(320 / 2.0, -30);
    parentLayer.emitterSize		= CGSizeMake(320 * 2.0, 0);;
    
    // Spawn points for the flakes are within on the outline of the line
    parentLayer.emitterMode		= kCAEmitterLayerOutline;
	parentLayer.emitterShape	= kCAEmitterLayerLine;
    
    parentLayer.shadowOpacity = 1.0;
	parentLayer.shadowRadius  = 0.0;
	parentLayer.shadowOffset  = CGSizeMake(0.0, 1.0);
	parentLayer.shadowColor   = [[UIColor whiteColor] CGColor];
    parentLayer.seed = (arc4random()%100)+1;

    
    CAEmitterCell* containerLayer = [self createSubLayerContainer];
    
    NSMutableArray *subLayerArray = [NSMutableArray array];
    NSArray *contentArray = [self getContentsByArray:self.imageNameArray];
    for (UIImage *image in contentArray) {
        [subLayerArray addObject:[self createSubLayer:image]];
    }
    
    if (containerLayer) {
        containerLayer.emitterCells = subLayerArray;
        parentLayer.emitterCells = [NSArray arrayWithObject:containerLayer];
    }else{
        parentLayer.emitterCells = subLayerArray;
    }
}

-(CAEmitterCell*)createSubLayerContainer{
    CAEmitterCell* containerLayer = [CAEmitterCell emitterCell];
	containerLayer.birthRate			= 10.0;
	containerLayer.velocity			= 0;
	containerLayer.lifetime			= 0.35;
    return containerLayer;
}

-(CAEmitterCell *)createSubLayer:(UIImage *)image{
    CAEmitterCell *cellLayer = [CAEmitterCell emitterCell];
    
    cellLayer.birthRate		= 5.0;
    cellLayer.lifetime		= 120.0;
	
	cellLayer.velocity		= -100;				// falling down slowly
	cellLayer.velocityRange = 0;
	cellLayer.yAcceleration = 2;
    cellLayer.emissionRange = 0.5 * M_PI;		// some variation in angle
    cellLayer.spinRange		= 0.25 * M_PI;		// slow spin
    
    cellLayer.contents		= (id)[image CGImage];
    cellLayer.color			= [[UIColor colorWithRed:0.600 green:0.658 blue:0.743 alpha:1.000] CGColor];

    return cellLayer;
}

-(NSArray *)getContentsByArray:(NSArray *)imageNameArray{
    NSMutableArray *retArray = [NSMutableArray array];
    
    for (NSString *imageName in imageNameArray) {
        UIImage *image = [UIImage imageNamed:imageName];
        if (image) {
            [retArray addObject:image];
        }
    }
    return retArray;
}
@end
