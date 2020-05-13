//
//  DemoTableViewCell.h
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/26.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomerObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface DemoTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *demoPic;
@property (weak, nonatomic) IBOutlet UILabel *demoName;
@property (weak, nonatomic) IBOutlet UILabel *demoContent;
@property (weak, nonatomic) IBOutlet UILabel *demoTime;

-(void) configCell:(CustomerObject*) weChat;

@end

NS_ASSUME_NONNULL_END
