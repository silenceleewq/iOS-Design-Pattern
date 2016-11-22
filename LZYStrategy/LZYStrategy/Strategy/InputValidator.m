//
//  InputValidator.m
//  LZYStrategy
//
//  Created by lirenqiang on 2016/11/17.
//  Copyright © 2016年 Ninja. All rights reserved.
//

#import "InputValidator.h"


@implementation InputValidator

/**
    这个方法的默认实现知识把错误指针设为nil,并向调用者返回NO
    为什么不用NSString作为输入参数呢?这里如果只用NSString值,那么策略对象中的动作就是单向的.验证器只能检查,返回结果,不能修改原始的值.比如,如果输入的内容不对,那么我们就把输入框置为空.
    如果输入错误,不去引发一个NSException异常,因为在Cocoa Touch框架中,引发自己的异常,然后用try-catch捕获十分耗费资源,和捕获系统的一场还不一样,.这个问题在这里不再展开.
    但是返回NSError的开销相对较小,而且Cocoa Touch框架的文档里,很多API在异常发生时都会返回一个NSError的实例.
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error
{
    if (error) {
        error = nil;
    }
    return NO;
}

@end
