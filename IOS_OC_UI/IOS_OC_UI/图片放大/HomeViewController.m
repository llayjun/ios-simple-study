//
//  HomeViewController.m
//  登录和注册
//
//  Created by yinlei zhang on 2020/4/21.
//  Copyright © 2020 llayjun. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()<UIScrollViewDelegate>
// scrollview
@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;
@property (strong, nonatomic) UIImageView* uiImageView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    // 可以在xib界面进行拖动设置delegate
    self.scrollview.delegate = self;
    // 滚动内容的大小
    UIImage* image = [UIImage imageNamed:@"sv"];
    self.scrollview.contentSize = CGSizeMake(image.size.width, image.size.height);
    double width = [self.scrollview systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].width;
    double height = [self.scrollview systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    // 偏移量
    self.scrollview.contentOffset= CGPointMake((image.size.width - width)/2, (image.size.height - height)/2);
    // 边缘偏移
    self.scrollview.contentInset = UIEdgeInsetsMake(10, 10, 10, 10);
    NSLog(@"width%f", width);
    NSLog(@"height%f", height);
    self.uiImageView = [[UIImageView alloc]initWithImage: image];
    [self.scrollview addSubview:self.uiImageView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// 一滚动就调用
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
}

// 一缩放调用
- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    
}

// 开始拖拽
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    
}

// 即将结束拖拽
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    
}

// 结束拖拽
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    
}

// 开始减速
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    
}

// 结束减速
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
}

// 结束动画
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.uiImageView;
}

- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view {
    
}

- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(CGFloat)scale {
    
}

@end
