//
//  AFHomeViewController.m
//  Sugar
//
//  Created by feepees on 16/8/3.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import "AFHomeViewController.h"
#import "AFBanner.h"
#import "AFControllerTitle.h"
#import "AFControllersView.h"

#import "AFArticleViewController.h"

@implementation AFHomeViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden=YES;
    
    //添加广告栏
    [self addBanner];
    
    //添加title视图
    [self addtitlesView];
    
    //添加界面
    [self addControllerS];
    
    
}
-(void)addBanner{
    AFBanner *banner=[[AFBanner alloc]init];
    [self.view addSubview:banner];
    [banner mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@0);
        make.left.equalTo(@0);
        make.right.equalTo(@0);
        make.height.equalTo(@200);
    }];
    NSArray *a=@[@"",@"",@"",@"",@""];
    [banner addImages:a];
    self.automaticallyAdjustsScrollViewInsets=NO;

}

-(void)addtitlesView{
    
    AFControllerTitle *titleView=[[AFControllerTitle alloc]init];
    [self.view addSubview:titleView];
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@200);
        make.left.right.equalTo(@0);
        make.height.equalTo(@40);
    }];
    [titleView addTitles:@[@"精选",@"原创精选",@"一周最热",@"美妆&穿搭",@"礼物",@"美食",@"设计感",@"文艺",@"学生党"]];
    

}

-(void)addControllerS{
    AFControllersView *controlersView=[[AFControllersView alloc]init];
    //controlersView.backgroundColor=[UIColor redColor];
    [self.view addSubview:controlersView];
    [controlersView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@240);
        make.left.equalTo(@0);
        make.right.equalTo(@0);
        make.bottom.equalTo(@0);
    }];
    NSMutableArray *a=[NSMutableArray array];
    for (int i=0; i<5; i++) {
        AFArticleViewController *av=[[AFArticleViewController alloc]init];
        av.view.backgroundColor=RANDOMCOLOR;
        [a addObject:av];
    }
    
    [controlersView addControllersInMainContrtroller:self withControllers:a];

}
@end
