//
//  DatePickerViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/22.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()

// 输入生日日期
@property (weak, nonatomic) IBOutlet UITextField *birthFileld;
@property (strong, nonatomic) UIDatePicker* picker;

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.picker = [[UIDatePicker alloc]init];
    self.picker.datePickerMode = UIDatePickerModeDate;
    [self.picker setLocale:[NSLocale localeWithLocaleIdentifier:@"ZH_cn"]];
    // 设置输入框类型为日期类型
    self.birthFileld.inputView = self.picker;
    // 选择生日设置监听
    [self.picker addTarget:self action:@selector(getBirth:) forControlEvents:UIControlEventValueChanged];
}

-(void) getBirth: (UIDatePicker*)picker {
    NSDateFormatter* format = [[NSDateFormatter alloc]init];
    [format setDateFormat:@"YYYY-MM-DD"];
    self.birthFileld.text = [format stringFromDate:picker.date];
}

// 触摸UIView就会调用该方法
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 整体设置
    [self.view endEditing:YES];
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
