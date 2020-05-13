//
//  CutomerViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/26.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "CutomerViewController.h"
#import "DemoTableViewCell.h"
#import "CustomerObject.h"

@interface CutomerViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray* weChats;

@end

@implementation CutomerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.weChats = [[[CustomerObject alloc]init] getModels];
    self.tableView.tableFooterView = [[UIView alloc]init];
    self.tableView.rowHeight = 100;
    // Do any additional setup after loading the view from its nib.
    // 关联cell到tabview
//    UINib* nib = [UINib nibWithNibName:@"DemoTableViewCell" bundle:nil];
//    [self.tableView registerNib:nib forCellReuseIdentifier:@"aaa"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.weChats.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DemoTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"aaa"];
    if(cell == nil) {
        cell = [[NSBundle mainBundle]loadNibNamed:@"DemoTableViewCell" owner:self options:nil].lastObject;
    }
    [cell configCell:[self.weChats objectAtIndex:indexPath.row]];
    return cell;
}

@end
