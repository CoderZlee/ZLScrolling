//
//  ViewController.m
//  ZLScrolling
//
//  Created by zlee on 16/3/14.
//  Copyright © 2016年 zlee. All rights reserved.
//

#import "ViewController.h"
#import "ZLScrolling.h"
@interface ViewController ()<ZLScrollingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSArray *url = @[@"http://e.hiphotos.baidu.com/lvpics/h=800/sign=61e9995c972397ddc97995046983b216/35a85edf8db1cb134d859ca8db54564e93584b98.jpg", @"http://e.hiphotos.baidu.com/lvpics/h=800/sign=1d1cc1876a81800a71e5840e813533d6/5366d0160924ab185b6fd93f33fae6cd7b890bb8.jpg", @"http://f.hiphotos.baidu.com/lvpics/h=800/sign=8430a8305cee3d6d3dc68acb73176d41/9213b07eca806538d9da1f8492dda144ad348271.jpg", @"http://d.hiphotos.baidu.com/lvpics/w=1000/sign=81bf893e12dfa9ecfd2e521752e0f603/242dd42a2834349b705785a7caea15ce36d3bebb.jpg", @"http://f.hiphotos.baidu.com/lvpics/w=1000/sign=4d69c022ea24b899de3c7d385e361c95/f31fbe096b63f6240e31d3218444ebf81a4ca3a0.jpg"];
    NSMutableArray *urlarr = [NSMutableArray array];
    for (NSString *str in url) {
        NSURL *imurl = [NSURL URLWithString:str];
        [urlarr addObject:imurl];
    }
    UIImage *placeholder = [UIImage imageNamed:@"timeline_image_loading.png"];
    NSArray *array = @[@"home_1",@"home_2",@"home_3",@"home_4",@"home_5",@"home_6",@"home_7"];
    ZLScrolling *zl = [[ZLScrolling alloc] initWithCurrentController:self frame:CGRectMake(0, 0, 375, 200) photos:urlarr placeholderImage:placeholder];
    zl.timeInterval = 1;
    zl.pageControl.pageIndicatorTintColor = [UIColor redColor];
    zl.delegate= self;
    ZLScrolling *zzzz = [[ZLScrolling alloc] initWithCurrentController:self frame:CGRectMake(0, 300, 375, 200) photos:array placeholderImage:nil];
    zzzz.timeInterval = 2;
    zzzz.delegate = self;
}
- (void)zlScrolling:(ZLScrolling *)zlScrolling clickAtIndex:(NSInteger)index
{
    NSLog(@"点击到------%ld",index);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
