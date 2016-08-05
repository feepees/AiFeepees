//
//  AFTabBarController.m
//  Sugar
//
//  Created by feepees on 16/8/3.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import "AFTabBarController.h"
#import "AFHomeViewController.h"
#import "AFDynamicViewContorller.h"
#import "AFArticleViewController.h"
#import "AFMessageViewController.h"
#import "AFInfoViewController.h"

@implementation AFTabBarController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.tabBar.backgroundColor=AFCOLOR(255, 255, 255);
    AFHomeViewController *homeC=[[AFHomeViewController alloc]init];
    [self addChildViewController:homeC withTitle:@"首页" andImage:@"home_unselect.jpg" andSelectImage:@"home.jpg"];
    self.delegate=self;
    AFDynamicViewContorller * dynamicC=[[AFDynamicViewContorller alloc]init];
    [self addChildViewController:dynamicC withTitle:@"首页" andImage:@"dynamic_unselect.jpg" andSelectImage:@"dynamic.jpg"];

    AFArticleViewController *articleC=[[AFArticleViewController alloc]init];
    [self addChildViewController:articleC withTitle:@"首页" andImage:@"article.jpg" andSelectImage:@"article.png"];

    AFMessageViewController *messageC=[[AFMessageViewController alloc]init];
    [self addChildViewController:messageC withTitle:@"首页" andImage:@"message_unselect.jpg" andSelectImage:@"message.jpg"];

    AFInfoViewController *infoC=[[AFInfoViewController alloc]init];
    [self addChildViewController:infoC withTitle:@"首页" andImage:@"info_unselect.jpg" andSelectImage:@"info.jpg"];

    
}
-(void)addChildViewController:(UIViewController *)childController withTitle:(NSString *)titile andImage:(NSString *)image andSelectImage:(NSString *)selectImage{
    childController.view.backgroundColor=RANDOMCOLOR;

    childController.tabBarItem.image=[UIImage imageNamed:image];
    childController.tabBarItem.imageInsets=UIEdgeInsetsMake(6, 0, -6, 0);
    childController.tabBarItem.selectedImage=[UIImage imageNamed:selectImage];
    [self addChildViewController:childController];

}




- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    if ([viewController isKindOfClass:[AFArticleViewController class]]) {
        
        AFArticleViewController *a=[[AFArticleViewController alloc]init];
        UINavigationController *na=[[UINavigationController alloc]initWithRootViewController:a];
        na.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:a action:@selector(click)];
        [self presentViewController:na animated:YES completion:nil];
        return NO;
    }
    NSLog(@"hahah");
    return YES;
    
}




@end
