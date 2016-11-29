//
//  TagsHedarView.h
//  T2TDemo
//
//  Created by luoluo on 16/7/25.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SKTagView;
#import "RKTagsView.h"
@protocol TagsHeaderViewHeightChangeDelegate <NSObject>
@optional
- (void)headerViewHeightChange:(CGFloat)height;
@end
@interface TagsHedarView : UIView<RKTagsViewDelegate>
@property (strong, nonatomic) SKTagView *tagView;
@property (nonatomic, strong) NSArray *colorPool;
@property(nonatomic,strong)NSArray *tagsArray;
@property (strong, nonatomic) RKTagsView *tagsView;
@property (weak, nonatomic) NSLayoutConstraint *tagsViewHeightConstraint;
@property (nonatomic,weak)id<TagsHeaderViewHeightChangeDelegate> delegate;
@end
