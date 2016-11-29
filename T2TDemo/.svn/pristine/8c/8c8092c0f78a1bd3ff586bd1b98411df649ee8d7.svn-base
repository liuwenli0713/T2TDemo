//
//  LWLDetailScrollView.m
//  T2TDemo
//
//  Created by luoluo on 16/7/22.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import "LWLDetailScrollView.h"

@implementation LWLDetailScrollView
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadSubViews];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self loadSubViews];
    }
    return self;
}
- (void)loadSubViews{
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator = NO;
    self.backgroundColor=[UIColor clearColor];
    //是否反弹
    //        _scrollView.bounces = NO;
//    self.delegate=self;
    self.pagingEnabled = YES;
    self.scrollEnabled = YES;
    self.directionalLockEnabled = YES;
    self.contentSize = CGSizeMake(kScreenWidth*3, self.frame.size.height);
//    [self addSubview:self.detailWebView];
//    [self addSubview:self.auditionTableView];
//    [self addSubview:self.evaluateTableView];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
