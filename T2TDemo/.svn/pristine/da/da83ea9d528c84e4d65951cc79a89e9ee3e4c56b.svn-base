//
//  TagsHedarView.m
//  T2TDemo
//
//  Created by luoluo on 16/7/25.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import "TagsHedarView.h"
//#import "SKTagView.h"
//#import "SKTag.h"
#import "UIColor+Hex.h"
@implementation TagsHedarView

- (void)setTagsArray:(NSArray *)tagsArray{
    _tagsArray = tagsArray;
    self.colorPool = @[@"#7ecef4", @"#84ccc9", @"#88abda",@"#7dc1dd",@"#b6b8de"];
//    [self setupTagView];
    NSString *text = @"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.";
    [self.tagsView removeAllTags];
    for (NSString *word in [text componentsSeparatedByString:@" "]) {
        if (word.length > 0) {
            [self.tagsView addTag:word];
        }
    }
    
    [self.tagsView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.width.equalTo(@20);
//        make.height.equalTo(@11);
        make.right.equalTo(self.mas_right).offset(-15);
        make.left.equalTo(self.mas_left).offset(30);
        make.top.equalTo(self.mas_top).offset(10);
        make.bottom.equalTo(self.mas_bottom).offset(-10);
        
    }];
//    NSLayoutConstraint *tagsViewHeightConstraint = [[NSLayoutConstraint alloc]init];
//    tagsViewHeightConstraint.priority = 999;
//    [self.tagsView addConstraint:tagsViewHeightConstraint];
//    [self layoutIfNeeded];
    CGFloat h = self.tagsView.height;
    if([self.delegate respondsToSelector:@selector(headerViewHeightChange:)]){
        [self.delegate headerViewHeightChange:h];
    }
}
- (RKTagsView*)tagsView{
    if (!_tagsView) {
        _tagsView = [[RKTagsView alloc]initWithFrame:CGRectMake(65, 0, kScreenWidth-65-10, 100)];
        _tagsView.editable = NO;
        _tagsView.interitemSpacing = 10;//列间距
        _tagsView.lineSpacing = 10;
        _tagsView.delegate = self;
        [self addSubview:_tagsView];
        
        
    }
    return _tagsView;
}
#pragma mark - RKTagsViewDelegate

- (UIButton *)tagsView:(RKTagsView *)tagsView buttonForTagAtIndex:(NSInteger)index {
    UIButton *customButton = [UIButton buttonWithType:UIButtonTypeCustom];
    customButton.titleLabel.font = tagsView.font;
    [customButton setTitle:[NSString stringWithFormat:@"%@,", tagsView.tags[index]] forState:UIControlStateNormal];
    [customButton setBackgroundColor:[UIColor cyanColor]];
    return customButton;
}
//- (void)setupTagView
//{
//    self.tagView = ({
//        SKTagView *view = [SKTagView new];
//        view.backgroundColor = UIColor.whiteColor;
//        view.padding    = UIEdgeInsetsMake(12, 12, 12, 12);
//        view.insets    = 15;
//        view.lineSpace = 10;
//        view;
//    });
//    [self addSubview:self.tagView];
//    [self.tagView mas_makeConstraints:^(MASConstraintMaker *make) {
////        UIView *superView = self;
//        make.centerY.equalTo(self.mas_centerY).with.offset(0);
//        make.leading.equalTo(self.mas_leading).with.offset(0);
//        make.trailing.equalTo(self.mas_trailing);
//    }];
//    NSArray *tagArr = _tagsArray[0];
//    //添加Tags
//    [tagArr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop)
//     {
//         SKTag *tag = [SKTag tagWithText:obj];
//         tag.textColor = [UIColor whiteColor];
//         tag.fontSize = 15;
//         tag.padding = UIEdgeInsetsMake(13.5, 12.5, 13.5, 12.5);
//         tag.bgColor = [UIColor colorWithHexString:self.colorPool[idx % self.colorPool.count]];
//         tag.target = self;
//         tag.action = @selector(handleBtn:);
//         tag.cornerRadius = 5;
//         [self.tagView addTag:tag];
//     }];
//}
//- (void)handleBtn:(UIButton *)btn
//{
//    NSLog(@"%@", btn.titleLabel.text);
//}
//#pragma mark - User interactions
//- (IBAction)onAdd:(id)sender
//{
//    SKTag *tag = [SKTag tagWithText:@"New Lang"];
//    tag.textColor = [UIColor whiteColor];
//    tag.fontSize = 15;
//    tag.padding = UIEdgeInsetsMake(13.5, 12.5, 13.5, 12.5);
//    tag.bgColor = [UIColor colorWithHexString:self.colorPool[arc4random() % self.colorPool.count]];
//    tag.target = self;
//    tag.action = @selector(handleBtn:);
//    tag.cornerRadius = 5;
//    
//    [self.tagView addTag:tag];
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
