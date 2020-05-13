//
//  LoginAndRegisterViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/22.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "LoginAndRegisterViewController.h"

@interface LoginAndRegisterViewController ()
- (IBAction)login:(id)sender;
- (IBAction)regist:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@end

@implementation LoginAndRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)regist:(id)sender {
    NSLog(@"新用户请注册");
}

- (IBAction)login:(id)sender {
    
    NSString* userNameText = self.username.text;
    NSString* passWordText = self.password.text;
    NSLog(@"用户名%@", userNameText);
    NSLog(@"密码%@", passWordText);
    if([userNameText isEqualToString:@"admin"] && [passWordText isEqualToString:@"123456"]) {
        NSLog(@"用户合法");
    } else {
        NSLog(@"用户不合法");
    }
}

// 触摸UIView就会调用该方法
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 整体设置
//    [self.view endEditing:YES];
    // 单独设置
    [self.username resignFirstResponder];
    [self.password resignFirstResponder];
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
