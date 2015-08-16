//
//  PhotoGridBrowser.h
//  GridStyleWebPhotoBrowser
//
//  Created by howeguo on 8/16/15.
//  Copyright (c) 2015 howeguo.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoGridViewBrowser : UIView
@property(nonatomic, strong) NSArray *imgURLArray;
@property(nonatomic, strong) NSArray *largeImgURLArray;
@property(nonatomic, strong) NSMutableArray *imgViewsArray;
@property(nonatomic,assign) int columnsPreRow;
@property(nonatomic,assign) CGFloat imgSize;
@property(nonatomic,assign) CGFloat distance;
@property (nonatomic, assign) UIEdgeInsets edgeInset;
@property (nonatomic,assign) CGFloat viewHeight;
@property(nonatomic, assign) NSInteger photoCount;
@property (copy, nonatomic) void (^openBlock)(NSInteger index);
@property (copy, nonatomic) void (^closeBlock)(NSInteger index);
@end
