//
//  TabBarViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/28.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()<UITabBarDelegate>
@property (weak, nonatomic) IBOutlet UITabBar *tabbar;

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.tabbar.barTintColor = [UIColor whiteColor];
    // 34 172 37
    self.tabbar.tintColor = [UIColor colorWithRed:34/255.0 green:172/255.0 blue:37/255.0 alpha:1.0];
    self.tabbar.items[0].badgeValue = @"222";
    [self.tabbar setSelectedItem:self.tabbar.items[0]];
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    NSLog(@"选中了第%@个", item.title);
    NSLog(@"选中了第%@个", item.badgeValue);
    item.badgeValue = nil;
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
