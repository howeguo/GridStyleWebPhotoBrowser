//
//  ViewController.m
//  GridStyleWebPhotoBrowser
//
//  Created by howeguo on 8/16/15.
//  Copyright (c) 2015 howeguo.com. All rights reserved.
//

#import "ViewController.h"
#import "PhotoGridViewBrowser.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *smallImgURLs = @[[NSURL URLWithString:@"http://fe.topit.me/e/ea/d2/113421799164ad2eael.jpg"],[NSURL URLWithString:@"http://i4.topit.me/4/de/13/1134214094cf213de4l.jpg"],[NSURL URLWithString:@"http://img5.duitang.com/uploads/item/201501/09/20150109233247_NsCGY.jpeg"],[NSURL URLWithString:@"http://img.tvmao.com/stills/star/3/202/b/580x441_1.jpg"],[NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201412/24/20141224193945_xjJ3y.jpeg"],[NSURL URLWithString:@"http://img5.duitang.com/uploads/item/201501/09/20150109233247_NsCGY.jpeg"],[NSURL URLWithString:@"http://img.tvmao.com/stills/star/3/202/b/580x441_1.jpg"],[NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201412/24/20141224193945_xjJ3y.jpeg"],[NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201412/24/20141224193945_xjJ3y.jpeg"]];
    
    NSArray *largeImgURLs = @[[NSURL URLWithString:@"http://fe.topit.me/e/ea/d2/113421799164ad2eael.jpg"],[NSURL URLWithString:@"http://i4.topit.me/4/de/13/1134214094cf213de4l.jpg"],[NSURL URLWithString:@"http://img5.duitang.com/uploads/item/201501/09/20150109233247_NsCGY.jpeg"],[NSURL URLWithString:@"http://img.tvmao.com/stills/star/3/202/b/580x441_1.jpg"],[NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201412/24/20141224193945_xjJ3y.jpeg"],[NSURL URLWithString:@"http://img5.duitang.com/uploads/item/201501/09/20150109233247_NsCGY.jpeg"],[NSURL URLWithString:@"http://img.tvmao.com/stills/star/3/202/b/580x441_1.jpg"],[NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201412/24/20141224193945_xjJ3y.jpeg"],[NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201412/24/20141224193945_xjJ3y.jpeg"]];
    
    PhotoGridViewBrowser *photosView = [[PhotoGridViewBrowser alloc] initWithFrame:CGRectMake(40.0, 30.0, 290.0f, 90.0f)];
    photosView.backgroundColor = [UIColor purpleColor];
    photosView.imgSize = 90.0f;
    photosView.distance = 5.0f;
    photosView.columnsPreRow = 3;
    [self.view addSubview:photosView];
    photosView.imgURLArray = smallImgURLs;
    photosView.largeImgURLArray = largeImgURLs;
    
    
    
    NSArray *smallImgURLs1 = @[[NSURL URLWithString:@"http://fe.topit.me/e/ea/d2/113421799164ad2eael.jpg"],[NSURL URLWithString:@"http://i4.topit.me/4/de/13/1134214094cf213de4l.jpg"],[NSURL URLWithString:@"http://img5.duitang.com/uploads/item/201501/09/20150109233247_NsCGY.jpeg"],[NSURL URLWithString:@"http://img.tvmao.com/stills/star/3/202/b/580x441_1.jpg"],[NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201412/24/20141224193945_xjJ3y.jpeg"],[NSURL URLWithString:@"http://img5.duitang.com/uploads/item/201501/09/20150109233247_NsCGY.jpeg"],[NSURL URLWithString:@"http://img.tvmao.com/stills/star/3/202/b/580x441_1.jpg"],[NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201412/24/20141224193945_xjJ3y.jpeg"]];
    
    NSArray *largeImgURLs1 = @[[NSURL URLWithString:@"http://fe.topit.me/e/ea/d2/113421799164ad2eael.jpg"],[NSURL URLWithString:@"http://i4.topit.me/4/de/13/1134214094cf213de4l.jpg"],[NSURL URLWithString:@"http://img5.duitang.com/uploads/item/201501/09/20150109233247_NsCGY.jpeg"],[NSURL URLWithString:@"http://img.tvmao.com/stills/star/3/202/b/580x441_1.jpg"],[NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201412/24/20141224193945_xjJ3y.jpeg"],[NSURL URLWithString:@"http://img5.duitang.com/uploads/item/201501/09/20150109233247_NsCGY.jpeg"],[NSURL URLWithString:@"http://img.tvmao.com/stills/star/3/202/b/580x441_1.jpg"],[NSURL URLWithString:@"http://img4.duitang.com/uploads/item/201412/24/20141224193945_xjJ3y.jpeg"]];
    
    PhotoGridViewBrowser *photosView1 = [[PhotoGridViewBrowser alloc] initWithFrame:CGRectMake(40.0, 330.0, 305.0f, 90.0f)];
    photosView1.backgroundColor = [UIColor yellowColor];
    photosView1.imgSize = 70.0f;
    photosView1.distance = 5.0f;
    photosView1.columnsPreRow = 4;
    [self.view addSubview:photosView1];
    photosView1.imgURLArray = smallImgURLs1;
    photosView1.largeImgURLArray = largeImgURLs1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
