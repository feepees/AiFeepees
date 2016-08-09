//
//  AFBanner.h
//  Sugar
//
//  Created by feepees on 16/8/5.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AFBanner : UIView<UIScrollViewDelegate>

@property(nonatomic,strong)UIScrollView *contentScrollView;
@property(nonatomic,strong)UIPageControl *pagecontrol;
@property(nonatomic,strong)NSTimer *timer;


-(void)addImages:(NSArray *)images;


@end
