//
//  AFHomeViewController.m
//  Sugar
//
//  Created by feepees on 16/8/3.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import "AFHomeViewController.h"
#import "AFBanner.h"
@implementation AFHomeViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden=YES;
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
@end
