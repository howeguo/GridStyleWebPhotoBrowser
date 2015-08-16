//
//  PhotoGridBrowser.m
//  GridStyleWebPhotoBrowser
//
//  Created by howeguo on 8/16/15.
//  Copyright (c) 2015 howeguo.com. All rights reserved.
//

#import "PhotoGridViewBrowser.h"
#import "MHFacebookImageViewer.h"
#import "UIImageView+WebCache.h"
@interface PhotoGridViewBrowser()<MHFacebookImageViewerDatasource>
@end
@implementation PhotoGridViewBrowser
- (id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initSubViews];
    }
    return self;
}

- (NSInteger)numberImagesForImageViewer:(MHFacebookImageViewer *)imageViewer
{
    return self.imgURLArray.count;
}
- (NSURL *)imageURLAtIndex:(NSInteger)index imageViewer:(MHFacebookImageViewer *)imageViewer
{
    return self.largeImgURLArray[index];
}
- (UIImage *)imageDefaultAtIndex:(NSInteger)index imageViewer:(MHFacebookImageViewer *)imageViewer
{
    return [UIImage imageNamed:@"defaultPic"];
}
- (NSArray *) imageViewers
{
    return _imgViewsArray;
}
- (void)awakeFromNib {
    
    [self initSubViews];
    // Initialization code
}


- (void) initSubViews
{
    _imgURLArray = [NSArray array];
    _imgViewsArray = [NSMutableArray array];
}
- (void) setImgURLArray:(NSArray *)imgURLArray
{
    _imgURLArray = imgURLArray;
    for (UIImageView *imgView in self.imgViewsArray) {
        [imgView removeFromSuperview];
    }
    if (self.columnsPreRow == 0)
        self.columnsPreRow = 2;
    __block PhotoGridViewBrowser *weakSelf = self;
    if (imgURLArray.count > 0 ) {
        [_imgViewsArray removeAllObjects];
        NSInteger rows = ceil((imgURLArray.count / ((float)self.columnsPreRow)));
        CGFloat imageHeight = (rows - 1) * self.distance + rows * self.imgSize;
        CGFloat  picY = 0.0f;
        for (int i = 0; i< imgURLArray.count; i++) {
            NSURL *url = imgURLArray[i];
            CGFloat currentRow = ceil(i / self.columnsPreRow);
            if ((i % self.columnsPreRow) == 0)
                picY = (self.distance + self.imgSize) * currentRow;
            CGFloat picX = self.distance + (self.imgSize + self.distance) * (i % self.columnsPreRow);
            UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(picX, picY, self.imgSize, self.imgSize)];
            imageView.contentMode = UIViewContentModeScaleAspectFill;
            imageView.clipsToBounds = YES;
            
            
            [self addSubview:imageView];
            [imageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"defaultPic"] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
                if(image == nil)
                {
                    //NSLog(@"error %@",error);
                }
            }];
            [imageView setupImageViewerWithDatasource:self initialIndex:i onOpen:^{
                if (weakSelf.openBlock) {
                    weakSelf.openBlock(i);
                }
                
            } onClose:^{
                if (weakSelf.closeBlock) {
                    weakSelf.closeBlock(i);
                }
            }];
            [self.imgViewsArray addObject:imageView];
        }
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, imageHeight);
    }
}

- (CGFloat) viewHeight
{
    NSInteger rows = ceil((self.photoCount / ((float)self.columnsPreRow)));
    return (rows - 1) * self.distance + rows * self.imgSize;
}
@end
