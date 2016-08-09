//
//  AFArticleViewController.m
//  Sugar
//
//  Created by feepees on 16/8/3.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import "AFArticleViewController.h"

@implementation AFArticleViewController
-(void)viewDidLoad{
    UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(10, 20, 100, 50)];
    [button setTitle:@"开始" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [super viewDidLoad];
    
    
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    
}
-(void)click{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
