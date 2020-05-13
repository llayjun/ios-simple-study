//
//  UserModel.h
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/26.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserModel : NSObject

@property (copy, nonatomic) NSString* userName;
@property (copy, nonatomic) NSString* passWord;
@property (strong, nonatomic) NSData* pic;

@end

NS_ASSUME_NONNULL_END
