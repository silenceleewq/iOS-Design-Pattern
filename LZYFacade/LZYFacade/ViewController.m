//
//  ViewController.m
//  LZYFacade
//
//  Created by lirenqiang on 2016/11/21.
//  Copyright © 2016年 Ninja. All rights reserved.
//

#import "ViewController.h"
#import "CabDriver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CabDriver *driver = [CabDriver new];
    [driver driveToLocation:CGPointMake(0, 100)];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
