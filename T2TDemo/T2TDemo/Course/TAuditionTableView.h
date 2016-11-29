//
//  AuditionTableView.h
//  T2TDemo
//
//  Created by luoluo on 16/7/21.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TAuditionTableView : UITableView<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSArray *auditionArray;
@end
