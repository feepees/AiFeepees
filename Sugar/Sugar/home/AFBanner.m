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
    if (!self) {
        //[self createBanner];
        //self=[[UIScrollView alloc]init];

    }
    return self;
}


-(void)addImages:(NSArray *)images{
    //[self createBanner];
    self.contentSize=CGSizeMake(SCREENWIDTH*images.count, 200);
    self.showsVerticalScrollIndicator=YES;
    for (int i=0; i<images.count; i++) {
        UIImageView *imageView=[[UIImageView alloc]init];
        [self addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@0);
            make.left.equalTo(@(i*SCREENWIDTH));
            make.height.equalTo(@200);
            make.width.equalTo(@(SCREENWIDTH));
        }];
        imageView.autoresizingMask=NO;
        imageView.backgroundColor=RANDOMCOLOR;
    }
    NSLog(@"%@   %f %ld",self,self.contentSize.width,self.subviews.count);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
