//
//  NSString+AFExtention.m
//  Sugar
//
//  Created by feepees on 16/8/9.
//  Copyright © 2016年 AiFeepees. All rights reserved.
//

#import "NSString+AFExtention.h"

@implementation NSString (AFExtention)

-(CGFloat)widthWithFont:(UIFont *)font andHeidht:(CGFloat)height{
    CGRect rect=[self boundingRectWithSize:CGSizeMake(MAXFLOAT, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return rect.size.width;
}
-(CGFloat)heightWithFont:(UIFont *)font andWidth:(CGFloat)width{
    CGRect rect=[self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return rect.size.height;
}
@end
