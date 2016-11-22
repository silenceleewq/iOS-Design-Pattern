//
//  AlphaInputValidator.h
//  LZYStrategy
//
//  Created by lirenqiang on 2016/11/18.
//  Copyright © 2016年 Ninja. All rights reserved.
//

#import "InputValidator.h"

@interface AlphaInputValidator : InputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end
