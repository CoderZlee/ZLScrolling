//
//  ZLScrolling.h
//  zlee.custom
//
//  Created by zlee on 16/3/13.
//  Copyright © 2016年 zlee. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZLScrolling;
@protocol ZLScrollingDelegate <NSObject>

@optional
/**点击到的下标*/
- (void)zlScrolling:(ZLScrolling *)zlScrolling clickAtIndex:(NSInteger)index;

@end


@interface ZLScrolling : UIViewController
/**轮播的时间*/
@property (nonatomic, assign) CGFloat timeInterval;
/**代理*/
@property (nonatomic, weak) id<ZLScrollingDelegate> delegate;
/**调整pageControl颜色*/
@property (nonatomic, strong,readonly) UIPageControl *pageControl;

/**
 *  初始化方法(数组本地图片存NSString,网络图片存NSURL)
 *
 *  @param viewcontroller     哪个控制器初始化就填哪个(一般是self)
 *  @param frame              frame
 *  @param photos             本地图片存NSString,网络图片存NSURL
 *  @param placeholderImage   占位图片
 */
- (instancetype)initWithCurrentController:(UIViewController *)viewcontroller frame:(CGRect)frame photos:(NSArray *)photos placeholderImage:(UIImage *)placeholderImage;
@end
