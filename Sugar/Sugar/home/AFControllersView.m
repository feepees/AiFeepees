//
//  AFControllersView.m
//  Sugar
//
//  Created by feepees on 16/8/9.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import "AFControllersView.h"

@implementation AFControllersView
-(instancetype)init{
    if (self=[super init]) {
        [self createContentScrollView];
    }
    return self;
}
-(void)createContentScrollView{
    
    self.contentScrollView=[[UIScrollView alloc]init];
    self.contentScrollView.backgroundColor=[UIColor yellowColor];
    [self addSubview:self.contentScrollView];
    [self.contentScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets(UIEdgeInsetsZero);
    }];
    self.contentScrollView.bounces=NO;
    self.contentScrollView.pagingEnabled=YES;
    
    
}
-(void)addControllersInMainContrtroller:(UIViewController  *)mainC withControllers:(NSArray *)controllers{
    self.contentScrollView.contentSize=CGSizeMake(SCREENWIDTH*controllers.count, self.height);
    for (int i=0; i<controllers.count; i++) {
        UIViewController *viewController=(UIViewController *)controllers[i];
        [mainC addChildViewController:controllers[i]];
        [self.contentScrollView addSubview: viewController.view];
        [viewController.view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@0);
            make.bottom.equalTo(self.mas_bottom);
            make.left.equalTo(@(SCREENWIDTH*i));
            make.width.equalTo(@(SCREENWIDTH));
        }];
    }

}
@end
