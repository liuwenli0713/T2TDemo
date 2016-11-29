//
//  LWLNavigationTopView.m
//  T2TDemo
//
//  Created by luoluo on 16/7/22.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import "TCourseNavHeaderView.h"

@implementation TCourseNavHeaderView
    


- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray*)titles{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadSubViews:titles];
    }
    return self;
}
- (void)loadSubViews:(NSArray*)titles{
    _navigationBottomView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.frame) -2, kButtonWidth, 2)];
    _navigationBottomView.backgroundColor = RGB(203, 91, 85, 1);
    [self addSubview:_navigationBottomView];
    for (int i = 0; i < titles.count; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(kButtonWidth*i, 0, kButtonWidth, 44);
        [button setTitleColor:RGB(65, 65, 65, 1) forState:UIControlStateNormal];
        [button setTitleColor:RGB(221, 0, 0, 1) forState:UIControlStateSelected];
        button.tag = 100+i;
        [self addSubview:button];
        [button addTarget:self action:@selector(clickNavigationButton:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:titles[i] forState:UIControlStateNormal];
        switch (i) {
            case 0:
                _selectButton = button;
                _selectButton.selected = YES;
                break;
            case 2:
                _evaluateButton = button;
                break;
            default:
                break;
        }
    }
}
//点击标题视图切换显示
- (void)clickNavigationButton:(UIButton*)btn{
    if (_selectButton!=btn) {
        _selectButton.selected = NO;
        _selectButton = btn;
        _selectButton.selected = YES;
        NSInteger page = _selectButton.tag-100;
        [UIView animateWithDuration:0.2 animations:^{
//            _navigationBottomView.frame = frame;
            _navigationBottomView.left = page*kButtonWidth;
        }];
        if([self.delegate respondsToSelector:@selector(clickNavigationButtonIndex:)])
        {
            [self.delegate clickNavigationButtonIndex:page];
        } 
    }
}
//
- (void)selectItemAtIndex:(NSInteger)index{
    UIButton *button = [self viewWithTag:100+index];
    if (button!=_selectButton) {
        _selectButton.selected = NO;
        _selectButton = button;
        _selectButton.selected = YES;
        [UIView animateWithDuration:0.2 animations:^{
            _navigationBottomView.left = index*kButtonWidth;
        }];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
