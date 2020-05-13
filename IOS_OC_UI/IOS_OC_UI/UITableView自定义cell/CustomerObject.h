//
//  CustomerObject.h
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/26.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomerObject : NSObject

@property (copy, nonatomic) NSString* picName;
@property (copy, nonatomic) NSString* titleText;
@property (copy, nonatomic) NSString* timeText;
@property (copy, nonatomic) NSString* contentText;

-(NSMutableArray*) getModels;
@end

NS_ASSUME_NONNULL_END
