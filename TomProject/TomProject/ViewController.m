//
//  ViewController.m
//  TomProject
//
//  Created by yinlei zhang on 2020/4/20.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tomcatimg;
- (IBAction)cymbalClick:(id)sender;
- (IBAction)drinkClick:(id)sender;
- (IBAction)eatclick:(id)sender;
- (IBAction)fartClick:(id)sender;
- (IBAction)pieClick:(id)sender;
- (IBAction)scratchClick:(id)sender;
// 定义图片属性
@property (strong, nonatomic) NSMutableArray* imgArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imgArray = [[NSMutableArray alloc]init];
}


- (IBAction)scratchClick:(id)sender {
    
}

- (IBAction)pieClick:(id)sender {
    
}

- (IBAction)fartClick:(id)sender {
    
}

- (IBAction)eatclick:(id)sender {
    
}

- (IBAction)drinkClick:(id)sender {
    NSLog(@"喝牛奶");
    [self.imgArray removeAllObjects];
    // 找到对应的图片数组
    for (int i = 0; i < 81; i ++) {
        NSString* name = [NSString stringWithFormat:@"drink_%02d.jpg", i];
        UIImage* uiImage = [UIImage imageNamed:name];
        [self.imgArray addObject:uiImage];
    }
    // 进行播放
    self.tomcatimg.animationImages = self.imgArray;
    self.tomcatimg.animationRepeatCount = 1;
    self.tomcatimg.animationDuration = self.imgArray.count * 0.075;
    [self.tomcatimg startAnimating];
}

- (IBAction)cymbalClick:(id)sender {
    
}
@end
