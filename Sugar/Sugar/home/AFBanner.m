//
//  AFBanner.m
//  Sugar
//
//  Created by feepees on 16/8/5.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import "AFBanner.h"

@implementation AFBanner
-(instancetype)init{
  self=  [super init];
    if (self) {
        [self createScrollView];

    }
    return self;
}

-(void)createScrollView{
    //
    self.contentScrollView=[[UIScrollView alloc]init];
    [self addSubview: self.contentScrollView];
    [self.contentScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets(UIEdgeInsetsZero);
    }];
    self.contentScrollView.delegate=self;
    self.contentScrollView.pagingEnabled=YES;
    self.contentScrollView.bounces=YES;
    //
    self.pagecontrol=[[UIPageControl alloc]init];
    [self addSubview:self.pagecontrol];
    [self.pagecontrol mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@0);
        make.bottom.equalTo(@(-10));
        make.size.mas_equalTo(CGSizeMake(100, 20));
    }];

}
-(void)addImages:(NSArray *)images{
   
    self.contentScrollView.contentSize=CGSizeMake(SCREENWIDTH*(images.count+2), 200);
    self.contentScrollView.contentOffset=CGPointMake(SCREENWIDTH, 0);
    self.pagecontrol.numberOfPages=images.count;
    
    for (int i=0; i<images.count+2; i++) {
        
        UIImageView *imageView=[[UIImageView alloc]init];
        [imageView addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageViewClick:)]];
        [self.contentScrollView addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@0);
            make.left.equalTo(@(i*SCREENWIDTH));
            make.height.equalTo(@200);
            make.width.equalTo(@(SCREENWIDTH));
        }];
        if (i==0) {
            imageView.backgroundColor=[UIColor redColor];
        }
        else if(i==images.count+1){
            imageView.backgroundColor=[UIColor yellowColor];
        
        }
        else{
            imageView.backgroundColor=RANDOMCOLOR;}
    }
    self.timer=[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    self.timer.fireDate=[NSDate dateWithTimeIntervalSinceNow:2];
    
}
-(void)imageViewClick:(UITapGestureRecognizer *)tap{

}

-(void)timerAction{
    
    NSInteger page=self.contentScrollView.contentOffset.x/SCREENWIDTH;
    self.contentScrollView.contentOffset=CGPointMake(SCREENWIDTH*(page+1), 0);
    if (page==0) {
        
        self.contentScrollView.contentOffset=CGPointMake((self.contentScrollView.contentSize.width/SCREENWIDTH-2)*SCREENWIDTH, 0);
        self.pagecontrol.currentPage=self.contentScrollView.contentSize.width/SCREENWIDTH-3;
    }
    else if (page==self.contentScrollView.contentSize.width/SCREENWIDTH-2){
        self.contentScrollView.contentOffset=CGPointMake(SCREENWIDTH, 0);
        self.pagecontrol.currentPage=0;
    }
    else{
        
        self.pagecontrol.currentPage=page;
    }
    NSLog(@"woshinibaba");
}

#define  mark --------ScrollViewDelegate-------
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.timer setFireDate:[NSDate distantFuture]];

}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSInteger page=self.contentScrollView.contentOffset.x/SCREENWIDTH;
    if (page==0) {
       
        self.contentScrollView.contentOffset=CGPointMake((self.contentScrollView.contentSize.width/SCREENWIDTH-2)*SCREENWIDTH, 0);
        self.pagecontrol.currentPage=self.contentScrollView.contentSize.width/SCREENWIDTH-3;
    }
    else if (page==self.contentScrollView.contentSize.width/SCREENWIDTH-1){
        self.contentScrollView.contentOffset=CGPointMake(SCREENWIDTH, 0);
        self.pagecontrol.currentPage=0;
    }
    else{
    
        self.pagecontrol.currentPage=page-1;
    }
    [self.timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:2]];

    
    
}
@end
