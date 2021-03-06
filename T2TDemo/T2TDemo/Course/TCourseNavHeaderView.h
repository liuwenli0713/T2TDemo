//
//  LWLNavigationTopView.h
//  T2TDemo
//
//  Created by luoluo on 16/7/22.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kButtonWidth 55

@protocol LWLClickNavigationBtnDelegate <NSObject>
@optional
- (void)clickNavigationButtonIndex:(NSInteger)btnIndex;
@end
@interface TCourseNavHeaderView : UIView
@property(nonatomic,strong)UIButton *selectButton;
@property(nonatomic,strong)UIButton *evaluateButton;//评论
@property(nonatomic,strong)UIView *navigationBottomView;
@property(nonatomic,weak)id<LWLClickNavigationBtnDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray*)titles;
- (void)selectItemAtIndex:(NSInteger)index;
@end
