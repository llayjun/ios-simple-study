//
//  AppDelegate.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/20.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "TestViewController.h"

#import "HomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   
        // 1. 创建一个现实的UIWindow，大小与屏幕一样
        self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
        
        // 2. 创建一个显示的控制器，使用三种方式.
        UIViewController* vc;
        // 2.1 直接创建一个控制器
    //    vc = [[UIViewController alloc]init];
    //    vc.view.backgroundColor = [UIColor redColor];
        // 2.2 使用storyboard的控制器
        // 2.2.1 找到stryborard
        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        // 2.2.1 通过storyboard找到vc(使用身份id)
        vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        // 2.2.2 通过storyboard找到vc(带箭头)
    //    vc = [storyboard instantiateInitialViewController];
        // 2.3 使用xib方式来进行路由
    //    vc = [[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
    //    vc = [[HomeViewController alloc]init];
    
        vc.navigationItem.title = @"首页";
        UINavigationController * controll = [[UINavigationController alloc]initWithRootViewController:vc];
        controll.navigationItem.title = @"haha";
        // 3. 将控制器与window关联
        self.window.rootViewController = controll;
        
        // 4. 将window显示出来
        [self.window makeKeyAndVisible];
    
    return YES;
}

@end
