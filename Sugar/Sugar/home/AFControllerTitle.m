//
//  AFControllerTitle.m
//  Sugar
//
//  Created by feepees on 16/8/9.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import "AFControllerTitle.h"
@class AFControllerTitle;

@implementation AFControllerTitle
-(instancetype)init{
    if (self=[super init]) {
        [self createContentScrollView];
    }
    return self;
}
-(void)createContentScrollView{
    
    self.contentScrollView=[[UIScrollView alloc]init];
    [self addSubview:self.contentScrollView];
    [self.contentScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets(UIEdgeInsetsZero);
    }];
    self.contentScrollView.bounces=YES;

}
-(void)addTitles:(NSArray *)titles{
    
    CGFloat widths=10.0;
    for (int i=0; i<titles.count; i++) {
        UIButton *titleBtn=[[UIButton alloc]init];
        [self.contentScrollView addSubview:titleBtn];
        titleBtn.titleLabel.font=[UIFont systemFontOfSize:14];
        CGFloat titleBtnWidth=[titles[i] widthWithFont:titleBtn.titleLabel.font andHeidht:self.height]+5;
        [titleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@5);
            make.left.equalTo(@(widths));
            make.size.mas_equalTo(CGSizeMake(titleBtnWidth, 30));
            
        }];
        widths+=(titleBtnWidth+10);
        [titleBtn addTarget:self action:@selector(titleSelct:) forControlEvents:UIControlEventTouchUpInside];
        [titleBtn setTitle:titles[i] forState:UIControlStateNormal];
        [titleBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [titleBtn setTitleColor:[UIColor redColor] forState:UIControlStateSelected ] ;
        titleBtn.selected=NO;
        if (i==0) {
            titleBtn.selected=YES;
            self.lineView=[[UIView alloc]init];
            self.lineView.translatesAutoresizingMaskIntoConstraints=NO;
            [self.contentScrollView addSubview:self.lineView];
            [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(titleBtn.mas_centerX);
                make.top.equalTo(titleBtn.mas_bottom);
                NSLog(@"titleBtnWidth%f",titleBtnWidth);
                make.size.mas_equalTo(CGSizeMake(titleBtnWidth,3));
            }];
            self.lineView.backgroundColor=[UIColor redColor];
            
        }
    }
    self.contentScrollView.contentSize=CGSizeMake(widths, self.height);

}
-(void)titleSelct:(UIButton *)titleBtn{
    for (UIView *subVIew in self.contentScrollView.subviews) {
        if ([subVIew isKindOfClass:[UIButton class]]) {
            UIButton *btn=(UIButton *)subVIew;
            btn.selected=NO;
        }
    }
    titleBtn.selected=YES;
    NSLog(@"title select");
[self.lineView mas_remakeConstraints:^(MASConstraintMaker *make) {
    make.centerX.equalTo(titleBtn.mas_centerX);
    make.top.equalTo(titleBtn.mas_bottom);
    make.size.mas_equalTo(CGSizeMake(titleBtn.width, 3));
}];
    
    self.contentScrollView.contentOffset=CGPointMake(titleBtn.x-SCREENWIDTH/2+titleBtn.width/2, 0);
    if (self.contentScrollView.contentOffset.x<0) {
        self.contentScrollView.contentOffset=CGPointMake(0, 0);
        
    }
    if (self.contentScrollView.contentOffset.x>self.contentScrollView.contentSize.width-SCREENWIDTH) {
        self.contentScrollView.contentOffset=CGPointMake(self.contentScrollView.contentSize.width-SCREENWIDTH, 0);
    }
}
@end
