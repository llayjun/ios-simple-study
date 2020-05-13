//
//  NavigationViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/28.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "NavigationViewController.h"

@interface NavigationViewController ()

@end

@implementation NavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    // 设置导航标题
    self.navigationItem.title = @"hahaha";
    // 设置导航图片
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"9_daye"]];
    // 设置bar button
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"测试" style:UIBarButtonItemStylePlain target:self action:@selector(click:)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"9_daye"] style:UIBarButtonItemStylePlain target:self action:@selector(click:)];
}

-(void) click: (UIBarButtonItem* ) right {
    NSLog(@"点我");
    // 弹出一个栈
    [self.navigationController popViewControllerAnimated:YES];
    // 弹到根控制器
//    [self.navigationController popToRootViewControllerAnimated:YES];
    // 弹出到指定
//    UIViewController* targetVc = self.navigationController.childViewControllers[1];
//    [self.navigationController popToViewController: targetVc animated:YES];
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
