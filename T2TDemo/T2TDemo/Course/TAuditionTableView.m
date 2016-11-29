//
//  AuditionTableView.m
//  T2TDemo
//
//  Created by luoluo on 16/7/21.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import "TAuditionTableView.h"
#import "TAuditionCell.h"

@implementation TAuditionTableView{
    
    NSString *_identify;
    UILabel *_titleLabel;

}
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self initSubViews];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initSubViews];
    }
    return self;
}
- (void)initSubViews{
    self.delegate = self;
    self.dataSource = self;
    _identify = @"TAuditionCell";
    [self registerNib:[UINib nibWithNibName:@"TAuditionCell" bundle:nil] forCellReuseIdentifier:_identify];
    UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 55)];
    headerView.backgroundColor = [UIColor whiteColor];
    self.tableHeaderView = headerView;
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(10, (headerView.frame.size.height-19)/2, 19, 19)];
    imgView.image = [UIImage imageNamed:@"icon_kc"];
    [headerView addSubview:imgView];
    _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(imgView.frame.size.width+20, (headerView.frame.size.height-20)/2, kScreenWidth-19-20-40, 20)];
    _titleLabel.font = [UIFont systemFontOfSize:14];
    _titleLabel.textColor = RGB(51, 51, 51, 1);
    _titleLabel.text = @"测试测试测试测试测试";
    [headerView addSubview:_titleLabel];
    UIButton *detailButton = [UIButton buttonWithType:UIButtonTypeCustom];
    detailButton.frame = CGRectMake(kScreenWidth-15-14,(headerView.frame.size.height-26)/2, 14, 26);
    [detailButton setImage:[UIImage imageNamed:@"ico_arrow_right@2x.png"] forState:UIControlStateNormal];
    [headerView addSubview:detailButton];
    self.separatorInset = UIEdgeInsetsMake(0, 27, 0, 0);
    
}

#pragma mark UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TAuditionCell *cell = [tableView dequeueReusableCellWithIdentifier:_identify forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell.playButton setImage:[UIImage imageNamed:@"icon_play"] forState:UIControlStateNormal];
    return cell;
}
- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *sectionHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 35)];
    UILabel *sectionTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, kScreenWidth-20, sectionHeaderView.frame.size.height)];
    sectionTitleLabel.font = [UIFont systemFontOfSize:14];
    sectionTitleLabel.text = [NSString stringWithFormat:@"第几section%ld",section];
    sectionTitleLabel.textColor = RGB(51, 51, 51, 1);
    [sectionHeaderView addSubview:sectionTitleLabel];
    return sectionHeaderView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 35;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
