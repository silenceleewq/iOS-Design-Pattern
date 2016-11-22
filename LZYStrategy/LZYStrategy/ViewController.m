//
//  ViewController.m
//  LZYStrategy
//
//  Created by lirenqiang on 2016/11/17.
//  Copyright © 2016年 Ninja. All rights reserved.
//

#import "ViewController.h"
#import "LZYTextField.h"
#import "NumericInputValidator.h"
#import "AlphaInputValidator.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet LZYTextField *alphaTextField;
@property (weak, nonatomic) IBOutlet LZYTextField *numericTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.alphaTextField.inputValidator = [AlphaInputValidator new];
    self.numericTextField.inputValidator = [NumericInputValidator new];
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
//    if (textField == self.numericTextField) {
//        //验证文本是否只包含0~9
//    }
//    else if (textField == self.alphaTextField)
//    {
//        //验证文本是否只包含a~z或A~Z
//    }
//    
    if ([textField isKindOfClass:[LZYTextField class]]) {
        [(LZYTextField *)textField validate];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
