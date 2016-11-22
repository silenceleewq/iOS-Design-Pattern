//
//  InputValidator.h
//  LZYStrategy
//
//  Created by lirenqiang on 2016/11/17.
//  Copyright © 2016年 Ninja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
static NSString *const InputValidationErrorDomain = @"InputValidationErrorDomain";
@interface InputValidator : NSObject
//实际验证策略的存根方法.
/*
    把UITextField引用作为输入参数,这样就能验证文本框的内容,然后返回BOOL值,表示验证的结果.这个方法还有个参数是NSError指针的引用.当有错误发生时,方法会构造一个NSError实例,并赋值给这个指针,这样使用验证器的地方就能做详细的错误处理了.
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end
