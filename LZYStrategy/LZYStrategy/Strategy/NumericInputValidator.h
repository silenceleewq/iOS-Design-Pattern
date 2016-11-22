//
//  NumericInputValidator.h
//  LZYStrategy
//
//  Created by lirenqiang on 2016/11/17.
//  Copyright © 2016年 Ninja. All rights reserved.
//

#import "InputValidator.h"


/** 
    数值型
 */
@interface NumericInputValidator : InputValidator

//保证输入只包含数字(0-9)的验证方法
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end
