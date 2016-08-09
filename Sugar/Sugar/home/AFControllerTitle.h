//
//  AFControllerTitle.h
//  Sugar
//
//  Created by feepees on 16/8/9.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AFControllerTitle : UIView
@property(nonatomic,strong)UIScrollView *contentScrollView;
@property(nonatomic,strong)UIView *lineView;


-(void)addTitles:(NSArray *)titles;

@end
