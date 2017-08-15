//
//  hggBar.m
//  封装Tabbar和Navgationbar
//
//  Created by Macx on 16/12/19.
//  Copyright © 2016年 UnderZero. All rights reserved.
//

#import "hggBar.h"

@implementation hggBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
/**
* init方法内部会调用这个方法
* 只有通过代码创建控件,才会执行这个方法
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
    }
    return self;
}

/**
 * 通过xib\storyboard创建控件时,才会执行这个方法
 */
- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super initWithCoder:decoder]) {
    }
    return self;
}

@end
