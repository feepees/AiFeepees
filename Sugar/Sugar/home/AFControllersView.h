//
//  AFControllersView.h
//  Sugar
//
//  Created by feepees on 16/8/9.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AFControllersView : UIView
@property(nonatomic,strong)UIScrollView *contentScrollView;
-(void)addControllersInMainContrtroller:(UIViewController  *)mainC withControllers:(NSArray *)controllers;

@end
