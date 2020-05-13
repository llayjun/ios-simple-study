//
//  UITableViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/23.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray* data;
@property (weak, nonatomic) IBOutlet UITableView *tabview;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *one = @[@"1", @"2", @"3", @"4", @"5", @"6"];
    self.data = [NSMutableArray arrayWithArray:one];
    self.tabview.rowHeight = 80.0;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)clickToAddCell:(UIButton *)sender {
    [self.tabview setEditing:YES];
}

- (IBAction)clickToSlide:(UIButton *)sender {
    [self.tabview setEditing:YES];
}

- (IBAction)clickFinish:(UIButton *)sender {
    [self.tabview setEditing:NO];
}

// 多少组，默认一组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"AAAA"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"AAAA"];
    }
    cell.textLabel.text = self.data[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"9_daye"];
    return cell;
}

// 组有多少个cell
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

// 头部视图
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"头部标题";
}

// 尾部视图
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"尾部标题";
}


// delegate
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 100;
//}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 200;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 200;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

// 处理点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* selData = self.data[indexPath.row];
    NSLog(@"点击了第几行%@", selData);
}

// 删除

// 1、该行能否编辑
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

// 2、提交编辑
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // 先删除数据源然后再删除界面
        // 1、删除数组那一个
        [self.data removeObjectAtIndex:indexPath.row];
        // 2、删除界面那一行
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    else if(editingStyle == UITableViewCellEditingStyleInsert) {
        // 增加
        // 1、增加的数据源
        [self.data insertObject:@"iphone" atIndex:indexPath.row];
        // 2、更新界面
        // (对整个数据进行刷新)
//        [self.tabview reloadData];
        // （对单个进行操作）
        [tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

// 3、设置删除按钮的文字
- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    return @"删除";
}

// 增加
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellEditingStyleInsert;
}

// 移动功能
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    // 1、移除需要移动cell
    NSString* cell = self.data[sourceIndexPath.row];
    // 2、移除有原始位置的数据
    [self.data removeObjectAtIndex:sourceIndexPath.row];
    // 3、插入到新的目标位置数据
    [self.data insertObject:cell atIndex:destinationIndexPath.row];
}

@end
