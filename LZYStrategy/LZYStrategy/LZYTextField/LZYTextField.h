//
//  LZYTextField.h
//  LZYStrategy
//
//  Created by lirenqiang on 2016/11/18.
//  Copyright © 2016年 Ninja. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

@interface LZYTextField : UITextField
@property (nonatomic, strong) InputValidator *inputValidator;
- (BOOL)validate;

@end
