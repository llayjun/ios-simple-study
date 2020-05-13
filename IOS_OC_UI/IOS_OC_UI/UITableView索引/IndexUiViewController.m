//
//  IndexUiViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/26.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "IndexUiViewController.h"

@interface IndexUiViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSArray* sectionTitles;
@property (strong, nonatomic) NSArray<NSArray *>* contentArray;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation IndexUiViewController

- (NSArray *)sectionTitles {
    if (_sectionTitles == nil) {
        _sectionTitles = @[@"A", @"B", @"C", @"D", @"E", @"F"];
    }
    return _sectionTitles;
}

- (NSArray<NSArray *> *)contentArray {
    if (_contentArray == nil) {
        _contentArray = @[@[@"阿里", @"阿拉"],
          @[@"百百", @"巴黎", @"巴黎111"],
          @[@"测试", @"测啊", @"测啊111111", @"测啊222"],
          @[@"大量", @"打哈"],
          @[@"饿了", @"饿了么"],
          @[@"发啊", @"发了"],
        ];
    }
    return _contentArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 懒加载，延迟加载
    
    self.tableView.sectionIndexColor = [UIColor greenColor];
    self.tableView.sectionIndexTrackingBackgroundColor = [UIColor redColor];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sectionTitles.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contentArray[section].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"aaa"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"aaa"];
    }
    cell.textLabel.text = self.contentArray[indexPath.section][indexPath.row];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.sectionTitles[section];
}

// 设置索引
- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return self.sectionTitles;
}

// 点击索引标题
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    NSLog(@"你点击的索引%@", title);
    return index;
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
