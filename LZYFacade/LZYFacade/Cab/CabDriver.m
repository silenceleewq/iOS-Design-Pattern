//
//  CabDriver.m
//  LZYFacade
//
//  Created by lirenqiang on 2016/11/21.
//  Copyright © 2016年 Ninja. All rights reserved.
//

#import "CabDriver.h"

@implementation CabDriver

- (void)driveToLocation:(CGPoint)x
{
    //启动计价器
    Taximeter *meter = [Taximeter new];
    [meter start];
    
    //操作车辆, 直到抵达位置X
    Car *car = [Car new];
    
    [car releaseBrakes];
    [car changeGears];
    [car pressAccelerator];
    
    [NSThread sleepForTimeInterval:2.0];
    
    //当到达了位置X,停下车和计价器
    [car releaseAccelerator];
    [car pressBrakes];
    [meter stop];
}

@end
