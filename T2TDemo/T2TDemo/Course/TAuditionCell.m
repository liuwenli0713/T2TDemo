//
//  TAuditionCell.m
//  T2TDemo
//
//  Created by luoluo on 16/7/21.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import "TAuditionCell.h"

@implementation TAuditionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self.circleView.layer setMasksToBounds:YES];
    [self.circleView.layer setCornerRadius:self.circleView.frame.size.width/2];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
