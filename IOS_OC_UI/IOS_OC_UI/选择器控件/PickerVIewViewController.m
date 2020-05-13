//
//  PickerVIewViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/22.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "PickerVIewViewController.h"

@interface PickerVIewViewController ()<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerName;

// pickerview数据
@property (strong, nonatomic) NSArray* arrayData;

@end

@implementation PickerVIewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    // 设置数据源
//       self.pickerName.delegate = self;
//       self.pickerName.dataSource = self;
       // 初始化数据
       self.arrayData = @[@"QAA", @"BBB", @"cccc", @"ddds"];
}

// 选择器有几列
- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 2;
}

// 每一列有多少行
- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.arrayData.count;
}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.arrayData[row];
}

// 选中某行
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0) {
        NSLog(@"pickerview选中的数据%@", self.arrayData[row]);
    }
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
