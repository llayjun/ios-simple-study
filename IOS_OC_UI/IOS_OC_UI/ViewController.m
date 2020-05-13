//
//  ViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/20.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "ViewController.h"
#import "LoginAndRegisterViewController.h"
#import "DatePickerViewController.h"
#import "PickerVIewViewController.h"
#import "TestViewController.h"
#import "HomeViewController.h"
#import "BannerViewController.h"
#import "TableViewController.h"
#import "IndexUiViewController.h"
#import "ModelViewController.h"
#import "CutomerViewController.h"
#import "RedViewController.h"
#import "TabBarViewController.h"

@interface ViewController ()<passValueProtocol>
- (IBAction)loginAndRegisterClick:(id)sender;
- (IBAction)datePickerClick:(id)sender;
- (IBAction)viewPickerClick:(id)sender;
- (IBAction)viewBigImageClick:(id)sender;
- (IBAction)scroviewClick:(id)sender;
@property(strong, nonatomic) UIButton* bannerButton;
@property(strong, nonatomic) UIButton* tableViewButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.bannerButton = [self.view viewWithTag:11];
    [self.bannerButton addTarget:self action:@selector(bannerClick:) forControlEvents:UIControlEventTouchUpInside];
    self.tableViewButton = [self.view viewWithTag:12];
    [self.tableViewButton addTarget:self action:@selector(tableViewClick:) forControlEvents:UIControlEventTouchUpInside];
    
    // 注册监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handlerNoti:) name:@"getValue" object:nil];
}

-(void) handlerNoti: (NSNotification*) not {
    NSDictionary* userInfo = not.userInfo;
    NSLog(@"获取通知传值%@", userInfo[@"info"]);
}

-(void) bannerClick: (id)sender {
    BannerViewController* bannerVc = [[BannerViewController alloc]init];
    [self.navigationController pushViewController:bannerVc animated:YES];
}

-(void) tableViewClick: (id)sender {
    TableViewController* tableViewVc = [[TableViewController alloc]init];
    [self.navigationController pushViewController:tableViewVc animated:YES];
}

- (IBAction)datePickerClick:(id)sender {
    DatePickerViewController* datePickerVc = [[DatePickerViewController alloc]init];
    [self.navigationController pushViewController:datePickerVc animated:YES];
}

- (IBAction)loginAndRegisterClick:(id)sender {
    LoginAndRegisterViewController* loginVc = [[LoginAndRegisterViewController alloc]init];
    [self.navigationController pushViewController:loginVc animated:YES];
}

- (IBAction)scroviewClick:(id)sender {
    TestViewController* testVc = [[TestViewController alloc]init];
    [self.navigationController pushViewController:testVc animated:YES];
}

- (IBAction)viewBigImageClick:(id)sender {
    HomeViewController* homeVc = [[HomeViewController alloc]init];
    [self.navigationController pushViewController:homeVc animated:YES];
}

- (IBAction)viewPickerClick:(id)sender {
    PickerVIewViewController* pickerVc = [[PickerVIewViewController alloc]init];
    [self.navigationController pushViewController:pickerVc animated:YES];
}

- (IBAction)viewClickIndexUITableView:(UIButton *)sender {
    IndexUiViewController* indexVc = [[IndexUiViewController alloc]init];
    [self.navigationController pushViewController:indexVc animated:YES];
}

- (IBAction)clickToModel:(UIButton *)sender {
    ModelViewController* modelVc = [[ModelViewController alloc]init];
    [self.navigationController pushViewController:modelVc animated:YES];
}

- (IBAction)clickToCutomer:(id)sender {
    CutomerViewController* customer = [[CutomerViewController alloc]init];
    [self.navigationController pushViewController:customer animated:YES];
}

- (IBAction)clickToUIViewController:(id)sender {
    // 界面传值
    RedViewController* vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"aaa"];
    // 正向传值
    vc.passedValue = @"11111";
    // 代理逆向传值
    vc.delegate = self;
    // block逆向传值
    vc.passValueBlock = ^(NSString * _Nonnull info) {
        NSLog(@"block获取值为%@", info);
    };
    [self presentViewController:vc animated:YES completion:nil];
}

// 重写这个方法，获取目标ViewController，实现真正的传值
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    RedViewController* vc = segue.destinationViewController;
    // 正向传值，通过segua连线
//    vc.passedValue = @"1aaaaa";
}

// segua跳转
- (IBAction)clickSegua:(id)sender {
    [self performSegueWithIdentifier:@"abcd" sender:nil];
}

- (IBAction)clickAlert:(id)sender {
    // 中间弹出框
    UIAlertController* controller = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"内容测试" preferredStyle:UIAlertControllerStyleAlert];
    [controller addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了OK");
    }]];
    [controller addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了取消");
    }]] ;
    [controller addAction:[UIAlertAction actionWithTitle:@"中间" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了中间");
    }]] ;
    [controller addAction:[UIAlertAction actionWithTitle:@"中间" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了中间");
    }]] ;
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)clickAlertSheet:(id)sender {
    // 底部弹出框
    UIAlertController* controller = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"内容测试" preferredStyle:UIAlertControllerStyleActionSheet];
    [controller addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了OK");
    }]];
    [controller addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了取消");
    }]] ;
    [controller addAction:[UIAlertAction actionWithTitle:@"中间" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了中间");
    }]] ;
    [controller addAction:[UIAlertAction actionWithTitle:@"中间" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"点击了中间");
    }]] ;
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)passValue:(NSString *)value {
    NSLog(@"获取代理的值%@", value);
}

// 点击导航拦上的Bar Button
- (IBAction)clickBarButton:(id)sender {
    NSLog(@"点击了bar button");
}

// tabbar使用
- (IBAction)tabbar:(id)sender {
    TabBarViewController* tabBar = [[TabBarViewController alloc]init];
    [self.navigationController pushViewController:tabBar animated:YES];
}


@end
