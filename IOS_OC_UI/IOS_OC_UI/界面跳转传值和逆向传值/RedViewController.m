//
//  RedViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/27.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "RedViewController.h"

@interface RedViewController ()
// 一个lable用户显示正向传值
@property (weak, nonatomic) IBOutlet UILabel *lable;
// 一个输入框用于逆向传值
@property (weak, nonatomic) IBOutlet UITextField *content;

@end

@implementation RedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.passedValue != nil) {
        self.lable.text = self.passedValue;
    }
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

// 点击按钮逆向传值
- (IBAction)clickValue:(id)sender {
    // 代理传值
    [self.delegate passValue:self.content.text];
    
    // 使用block
    if (self.passValueBlock) {
        self.passValueBlock(self.content.text);
    }
    //监听传值
    [[NSNotificationCenter defaultCenter]postNotificationName:@"getValue" object:nil userInfo:@{@"info": self.content.text}];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
