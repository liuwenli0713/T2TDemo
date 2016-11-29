//
//  EvaluateTableView.m
//  T2TDemo
//
//  Created by luoluo on 16/7/21.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import "TEvaluateTableView.h"
#import "TEvaluateCell.h"
#import "TagsHedarView.h"
#import "TEvaluateTagCell.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "RKTagsCell.h"
#import "UIColor+Hex.h"
#import "RKCustomButton.h"

#define k_Width ((kScreenWidth-110)/3)
static NSString *identy = @"EcaluateTagCell";
@implementation TEvaluateTableView{
    UIView *_bottomView;
    NSString *_identify;
    TCourseHeaderView *_courseHeaderView;
    TagsHedarView *_tagsHeaderView;
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
    _identify = @"TEvaluateCell";
    self.evaluateArray = @[
                           @[@"全部",@"钢琴",@"吉他",@"电吉他",@"小提琴",@"架子鼓",@"口琴",@"贝斯",@"卡祖笛",@"古筝",@"翻弹",@"音乐",@"指弹",@"千本樱",@"民乐",@"初音MIKU",@"ANIMENZ",@"PENBEAT",@"木吉他",@"二胡",@"COVER",@"交响",@"权御天下",@"普通DISCO",@"OP",@"ILEM",@"原创",@"作业用BGM",@"串烧",@"东方",@"合奏",@"燃向",@"触手",@"试奏",@"ACG指弹",@"武士桑",@"触手猴",@"BGM",@"LAUNCHPAD"],
                           @[@"数学",@"物理",@"英语",@"化学",@"地理",@"历史",@"生物"]
                           ].mutableCopy;
    [self registerNib:[UINib nibWithNibName:@"TEvaluateCell" bundle:nil] forCellReuseIdentifier:_identify];
    [self registerNib:[UINib nibWithNibName:@"TEvaluateTagCell" bundle:nil] forCellReuseIdentifier:identy];
    self.separatorInset = UIEdgeInsetsMake(0, 65, 0, 0);
    [self createTableHeaderView];
}
- (void)createTableHeaderView{
    _courseHeaderView = [[TCourseHeaderView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 300)];
    _courseHeaderView.backgroundColor = [UIColor whiteColor];
    _courseHeaderView.delegate = self;
    _courseHeaderView.tagsArray = self.evaluateArray;
    self.tableHeaderView = _courseHeaderView;
//    _tagsHeaderView = [[TagsHedarView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 300)];
//    _courseHeaderView.backgroundColor = [UIColor whiteColor];
////    _tagsHeaderView.delegate = self;
//    _tagsHeaderView.tagsArray = self.evaluateArray;
//    self.tableHeaderView = _tagsHeaderView;
    
}
#pragma mark UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 2;
    }else{
        return 10;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        TEvaluateTagCell *cell = [tableView dequeueReusableCellWithIdentifier:identy forIndexPath:indexPath];
        [self configCell:cell indexpath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
        
    }else{
        TEvaluateCell *cell = [tableView dequeueReusableCellWithIdentifier:_identify forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}

- (UIButton *)tagsView:(RKTagsView *)tagsView buttonForTagAtIndex:(NSInteger)index {
    RKCustomButton *customButton = [RKCustomButton buttonWithType:UIButtonTypeSystem];
    customButton.titleLabel.font = tagsView.font;
    [customButton setTitle:[NSString stringWithFormat:@"%@,", tagsView.tags[index]] forState:UIControlStateNormal];
    [customButton runBubbleAnimation];
    return customButton;
}
//- (void)configCell2:(RKTagsCell*)cell indexpath:(NSIndexPath *)indexpath{
//    [cell.rkTagsView removeAllTags];
//    cell.rkTagsView.editable = NO;
//    cell.rkTagsView.interitemSpacing = 10;//列间距
//    cell.rkTagsView.lineSpacing = 10;
//    cell.rkTagsView.delegate = self;
//    cell.tagsViewHeightConstraint.priority = 999;
//    [cell layoutIfNeeded];
//     NSArray *arr =self.evaluateArray[indexpath.row];
//    [arr enumerateObjectsUsingBlock:^(NSString  *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        [cell.rkTagsView addTag:obj];
//    }];
//}

- (void)configCell:(TEvaluateTagCell *)cell indexpath:(NSIndexPath *)indexpath
{
    [cell.tagView removeAllTags];
    cell.tagView.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width-56;
    cell.tagView.padding = UIEdgeInsetsMake(20, 20, 20, 20);
    cell.tagView.lineSpacing = 20;
    cell.tagView.interitemSpacing = 30;
    cell.tagView.singleLine = NO;
    // 给出两个字段，如果给的是0，那么就是变化的,如果给的不是0，那么就是固定的
//    cell.tagView.regularWidth = 80;
//    cell.tagView.regularHeight = 30;
    NSArray *arr =self.evaluateArray[indexpath.row];
    
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        SKTag *tag = [[SKTag alloc] initWithText:arr[idx]];
        
        tag.font = [UIFont systemFontOfSize:12];
        tag.textColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0  blue:arc4random() % 256 / 255.0  alpha:1];
        tag.bgColor =[UIColor colorWithHexString: @"#f5f5f5"];
        tag.cornerRadius = 5;
        tag.enable = YES;
        tag.padding = UIEdgeInsetsMake(5, 10, 5, 10);
        [cell.tagView addTag:tag];
    }];
    __weak SKTagView *weakView = cell.tagView;
    cell.tagView.didTapTagAtIndex = ^(NSUInteger index)
    {
        NSLog(@"点击了%ld",index);
        if (index<weakView.subviews.count-1) {
            UIButton *btn = [weakView.subviews objectAtIndex:index];
            btn.selected = YES;
            btn.backgroundColor = [UIColor colorWithRed:223/255.0f green:61/255.0f blue:49/255.0f alpha:1];
        }else{
            [self onInsert:nil];
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
            [self reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        }
    };
    //新增按钮
    SKTag *tag = [SKTag tagWithText: @"23"];
    tag.textColor = [UIColor clearColor];
    tag.fontSize = 12;
    //tag.font = [UIFont fontWithName:@"Courier" size:15];
    //tag.enable = NO;
    tag.padding = UIEdgeInsetsMake(7.5, 12.5, 7.5, 12.5);
    //    tag.bgColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"icon_jia@2x.png"]];
    tag.bgImg = [UIImage imageNamed:@"icon_jia@2x.png"];
    tag.cornerRadius = 4;
    [cell.tagView addTag:tag];
    
}

- (IBAction)onInsert: (id)sender {
    SKTag *tag = [self createTag:@"新增"];
    TEvaluateTagCell *cell = [self cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
    NSMutableArray *arr = [[self.evaluateArray objectAtIndex:0] mutableCopy];
    [arr insertObject:@"新增" atIndex:cell.tagView.subviews.count-1];
    [self.evaluateArray replaceObjectAtIndex:0 withObject:arr];
    [cell.tagView insertTag: tag atIndex: cell.tagView.subviews.count-1];
}
- (SKTag*)createTag:(NSString*)text{
    SKTag *tag = [SKTag tagWithText: text];
    tag.textColor = [UIColor colorWithHexString: @"#333333"];
    tag.selectTextColor = [UIColor whiteColor];
    tag.fontSize = 12;
    
    //tag.font = [UIFont fontWithName:@"Courier" size:15];
    //tag.enable = NO;
    tag.padding = UIEdgeInsetsMake(7.5, 12.5, 7.5, 12.5);
    tag.bgColor = [UIColor colorWithHexString: @"#f5f5f5"];
    
    //        tag.bgColor = [UIColor colorWithRed:245/255.0f green:245/255.0f blue:245/255.0f alpha:1];
    
    tag.cornerRadius = 4;
    return tag;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return [tableView fd_heightForCellWithIdentifier:identy configuration:^(id cell) {
            
            [self configCell:cell indexpath:indexPath];
        }];
    }else{
        NSString *labelString = @"jksdlfsfslfkjslflskfklsjflsjfklsjflsjflsjfksljdkldjfsddddddddddddddddddddddddjfsoajfl江水泡饭就说了句11江水泡饭就说了句11江水泡饭就说了句11江水泡饭就说了句11江水泡饭就说了句11";
        NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle1 setLineSpacing:6];
        NSDictionary *attribute = @{NSFontAttributeName: [UIFont systemFontOfSize:14],NSParagraphStyleAttributeName:paragraphStyle1};
        CGFloat width = kScreenWidth - 75;
        CGSize size1 = [labelString boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options: NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    //    CGSize labelSize =  [labelString sizeWithAttributes:attribute];
        return size1.height+52+15;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.1;
}
#pragma mark HeaderViewHeightChangeDelegate
- (void)headerViewHeightChange:(CGFloat)height{
    NSLog(@"%f",height);
    _courseHeaderView.height = height;
    [self beginUpdates];
//    NSLog(@"%f",height);
////    [self setTableHeaderView:_courseHeaderView];
    self.tableHeaderView = _courseHeaderView;
    
    [self endUpdates];
    
}
@end
