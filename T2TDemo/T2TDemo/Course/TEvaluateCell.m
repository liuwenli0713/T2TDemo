//
//  TEvaluateCell.m
//  T2TDemo
//
//  Created by luoluo on 16/7/21.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import "TEvaluateCell.h"

@implementation TEvaluateCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self.userImgView.layer setMasksToBounds:YES];
    [self.userImgView.layer setCornerRadius:self.userImgView.frame.size.width/2];
    NSString *str = @"jksdlfsfslfkjslflskfklsjflsjfklsjflsjflsjfksljdkldjfsddddddddddddddddddddddddjfsoajfl江水泡饭就说了句11江水泡饭就说了句11江水泡饭就说了句11江水泡饭就说了句11江水泡饭就说了句11";
    self.contentLabel.text = str;
    NSMutableAttributedString * attributedString1 = [[NSMutableAttributedString alloc] initWithString:str];
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:6];
    [attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [str length])];
    [self.contentLabel setAttributedText:attributedString1];
    [self.contentLabel sizeToFit];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
