//
//  LZYTextField.m
//  LZYStrategy
//
//  Created by lirenqiang on 2016/11/18.
//  Copyright © 2016年 Ninja. All rights reserved.
//

#import "LZYTextField.h"

@interface LZYTextField ()


@end
//errorPointer = *error;
@implementation LZYTextField

- (BOOL)validate
{
    NSError *error = nil;
    BOOL validationResult = [self.inputValidator validateInput:self error:&error];
    
    if (!validationResult) {
        UIAlertView *alertView =[[UIAlertView alloc] initWithTitle:[error localizedDescription] message:[error localizedFailureReason] delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", @"") otherButtonTitles:nil, nil];
        [alertView show];
    }
    
    return validationResult;
}

@end
