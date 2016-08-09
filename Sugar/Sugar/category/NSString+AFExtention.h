//
//  NSString+AFExtention.h
//  Sugar
//
//  Created by feepees on 16/8/9.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AFExtention)
/**
 *  计算控件宽度
 *
 *  @param font   字体
 *  @param height 高度
 *
 *  @return 宽度
 */
-(CGFloat)widthWithFont:(UIFont *)font andHeidht:(CGFloat)height;

/**
 *  计算控件高度
 *
 *  @param font   字体
 *  @param height 宽度
 *
 *  @return 高度
 */
-(CGFloat)heightWithFont:(UIFont *)font andWidth:(CGFloat)width;

@end
