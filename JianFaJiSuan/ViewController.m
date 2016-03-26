//
//  ViewController.m
//  JianFaJiSuan
//
//  Created by yang johnny on 2/19/16.
//  Copyright © 2016 yang johnny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



-(void) count{
    
    int num1 = self.text1.text.intValue;
    int num2 = self.text2.text.intValue;
    
    int str = 0;
    if (num1 >= num2) {
    str = num1 - num2;

    }
    else{
    
        //弹出警告框，中间弹出
        UIAlertController *uialert = [UIAlertController alertControllerWithTitle:@"警告" message:@"被减数应该大于减数。" preferredStyle:UIAlertControllerStyleAlert];
        [uialert addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleCancel handler:nil]];
        
        //启动弹框
        [self presentViewController:uialert animated:NO completion:nil];
    }
    
    //int转换成string类型
    self.uilab.text = [NSString stringWithFormat:@"%d", str];


    //打开键盘
    [self.text1 resignFirstResponder];
    
    
    //关闭键盘
    [self.view endEditing:true];
    
}

@end
