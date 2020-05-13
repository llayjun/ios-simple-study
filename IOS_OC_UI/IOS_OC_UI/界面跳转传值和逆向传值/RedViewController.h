//
//  RedViewController.h
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/27.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// 定义一个block
typedef void (^ PassValueBlock)(NSString* info);
// 定义协议
@protocol passValueProtocol <NSObject>
// 定义一个代理方法
-(void) passValue: (NSString*) value;

@end

@interface RedViewController : UIViewController

// 正向传值
// 定义一个属性，正向传值
@property (strong, nonatomic) NSString* passedValue;

// 逆向传值
// 定义代理属性
@property (assign, nonatomic) id<passValueProtocol> delegate;

// 定义block属性
@property (copy, nonatomic) PassValueBlock passValueBlock;

@end

NS_ASSUME_NONNULL_END
