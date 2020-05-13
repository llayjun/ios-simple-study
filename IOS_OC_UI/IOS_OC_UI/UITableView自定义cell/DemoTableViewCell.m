//
//  DemoTableViewCell.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/26.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "DemoTableViewCell.h"

@implementation DemoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configCell:(CustomerObject *)weChat {
    self.demoPic.image = [UIImage imageNamed:weChat.picName];
    self.demoName.text = weChat.timeText;
    self.demoTime.text = weChat.timeText;
    self.demoContent.text = weChat.contentText;
}

@end
