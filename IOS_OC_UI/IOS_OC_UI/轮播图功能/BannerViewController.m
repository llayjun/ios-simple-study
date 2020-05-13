//
//  BannerViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/23.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "BannerViewController.h"

@interface BannerViewController ()<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollerView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageController;

@end

@implementation BannerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.scrollerView.delegate = self;
    // frame: (0,0) (宽,0)（2*宽，0）
    CGFloat with = self.scrollerView.bounds.size.width;
    for (int i = 0; i < 5; i++) {
        CGRect cgRect = CGRectMake(i * with, 0, with, self.scrollerView.bounds.size.height);
        UIImage* image = [UIImage imageNamed:@"ios_mvc.jpg"];
        UIImageView* uiImage = [[UIImageView alloc]initWithFrame:cgRect];
        uiImage.image = image;
        [self.scrollerView addSubview: uiImage];
    }
    self.scrollerView.contentSize = CGSizeMake(5 * with, 0);
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    CGFloat offset = scrollView.contentOffset.x;
    NSInteger index = offset / self.scrollerView.bounds.size.width;
    [self.pageController setCurrentPage:index];
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
