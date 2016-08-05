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
    [super viewDidLoad];
    UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(100, 200, 100, 50)];
    [button setTitle:@"开始" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    self.tabBarController.delegate=self;
    [self.view addSubview:button];
    
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    
}
-(void)click{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    NSLog(@"hahah");
    return NO;

}

@end
