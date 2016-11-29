//
//  TagsView.m
//  TagsDemo
//
//  Created by Administrator on 16/1/21.
//  Copyright © 2016年 Administrator. All rights reserved.
//

#import "TagsView.h"
#import "TagsFrame.h"
@implementation TagsView
- (void)setTagsFrame:(TagsFrame *)tagsFrame{
    _tagsFrame = tagsFrame;
    for (NSInteger i=0; i<tagsFrame.tagsArray.count; i++) {
        UIButton *tagsBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [tagsBtn setTitle:tagsFrame.tagsArray[i] forState:UIControlStateNormal];
        [tagsBtn setTitleColor:RGB(51, 51,  51, 1) forState:UIControlStateNormal];
        [tagsBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
        [tagsBtn addTarget:self action:@selector(selectButton:) forControlEvents:UIControlEventTouchUpInside];
        tagsBtn.titleLabel.font = TagsTitleFont;
        tagsBtn.backgroundColor = [UIColor whiteColor];
        tagsBtn.backgroundColor = RGB(245, 245, 245, 1);
//        tagsBtn.layer.borderWidth = 1;
//        tagsBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
        tagsBtn.layer.cornerRadius = 4;
        tagsBtn.layer.masksToBounds = YES;
        
        tagsBtn.frame = CGRectFromString(tagsFrame.tagsFrames[i]);
        
        [self addSubview:tagsBtn];
    }

}
- (void)selectButton:(UIButton*)btn{
    btn.selected = !btn.selected;
    if (btn.selected) {
        btn.backgroundColor = RGB(250, 59, 41, 1);
    }else{
        btn.backgroundColor = RGB(245, 245, 245, 1);
    }
}
@end
