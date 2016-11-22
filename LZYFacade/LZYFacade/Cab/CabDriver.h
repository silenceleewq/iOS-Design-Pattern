//
//  CabDriver.h
//  LZYFacade
//
//  Created by lirenqiang on 2016/11/21.
//  Copyright © 2016年 Ninja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Car.h"
#import "Taximeter.h"

@interface CabDriver : NSObject

/**
 CabDriver的外观方法
 */
- (void)driveToLocation:(CGPoint)x;

@end
