# ZLScrolling
一句话实现无限轮播
# Description
    初始化方法(数组本地图片存 NSString,网络图片存NSURL)，支持网络和本地图片，内部进行了图片处理，
    简单的方法就可以调用，实现代理方法就可以监听到点击到了哪个图片。用 UICollectionView 进行的封装。

    添加到当前控制器的写法
    ZLScrolling *zl = [[ZLScrolling alloc] initWithCurrentController:self frame:CGRectMake(0, 0, 375, 200) 
    photos:urlarr placeholderImage:placeholder];
    zl.timeInterval = 1;

    添加到其他视图的写法\n
    ZLScrolling *zl = [[ZLScrolling alloc] initWithCurrentController:self frame:CGRectMake(0, 0, 375, 200) 
    photos:urlarr placeholderImage:placeholder];
    tablieView.tableHeaderView = zl.view;
    zl.timeInterval = 1;
