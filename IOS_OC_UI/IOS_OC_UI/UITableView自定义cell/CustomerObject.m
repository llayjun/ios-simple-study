//
//  CustomerObject.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/26.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "CustomerObject.h"

@interface CustomerObject()

@property (strong, nonatomic) NSArray* pics;
@property (strong, nonatomic) NSArray* titles;
@property (strong, nonatomic) NSArray* times;
@property (strong, nonatomic) NSArray* contents;
@property (strong, nonatomic) NSMutableArray* weChats;

@end

@implementation CustomerObject

- (NSMutableArray *)getModels {
    return self.weChats;
}

- (NSMutableArray *)weChats {
    if (_weChats == nil) {
        _weChats = [NSMutableArray array];
        for (int i = 0; i < self.titles.count; i++) {
            CustomerObject* wechat = [[CustomerObject alloc]init];
            wechat.picName = self.pics[i];
            wechat.titleText = self.titles[i];
            wechat.timeText = self.times[i];
            wechat.contentText = self.contents[i];
            [_weChats addObject:wechat];
        }
    }
    return _weChats;
}

- (NSArray *)pics {
    if (_pics == nil) {
        _pics = @[@"9_daye", @"9_daye", @"9_daye", @"9_daye"];
    }
    
    return _pics;
}

- (NSArray *)titles {
    if (_titles == nil) {
        _titles = @[@"title1", @"title2", @"title3", @"title4",];
    }
    return _titles;
}

- (NSArray *)times {
    if (_times == nil) {
        _times = @[@"time1", @"time2", @"time3", @"time4",];
    }
    return _times;
}

- (NSArray *)contents {
    if (_contents == nil) {
        _contents = @[@"_contents1", @"_contents2", @"_contents3", @"_contents4",];
    }
    return _contents;
}


@end
