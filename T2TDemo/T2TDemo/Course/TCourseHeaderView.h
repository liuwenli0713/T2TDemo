//
//  CourseHeaderView.h
//  T2TDemo
//
//  Created by luoluo on 16/7/25.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SKTagView;
@protocol HeaderViewHeightChangeDelegate <NSObject>
@optional
- (void)headerViewHeightChange:(CGFloat)height;
@end
@interface TCourseHeaderView : UIView
@property(nonatomic,strong)NSArray *tagsArray;
@property (nonatomic, strong) NSArray *colorArray;
@property (nonatomic,weak)id<HeaderViewHeightChangeDelegate> delegate;
@property (strong, nonatomic) SKTagView *tagView1;
@property (strong,nonatomic)UITextField *textField1;
@end
