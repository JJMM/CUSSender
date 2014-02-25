//
//  CUSLayerVC.h
//  CUSSenderExample
//
//  Created by zhangyu on 14-2-24.
//  Copyright (c) 2014年 zhangyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CUSViewController.h"
#import "CUSSender.h"

@interface CUSLayerVC : CUSViewController
@property(nonatomic,strong)CALayer *rootLayer;

-(CALayer *)createLayer;

-(NSString *)getBackgroundImageName;
@end
