//
//  CourseDetailViewController.m
//  T2TDemo
//
//  Created by luoluo on 16/7/21.
//  Copyright © 2016年 长沙二三三网络科技有限公司. All rights reserved.
//

#import "CourseDetailViewController.h"
//#import "TCourseWebView.h"
//#import "TAuditionTableView.h"
//#import "TEvaluateTableView.h"
#import "TCourseBottomView.h"
#import "TCourseNavHeaderView.h"
#import "LWLDetailScrollView.h"
#import "TCourseDetailController.h"
#import "TAuditionViewController.h"
#import "TEvaluateViewController.h"
#import "WMMenuView.h"
//TStudyPagesController
@interface CourseDetailViewController ()<UIScrollViewDelegate,LWLClickNavigationBtnDelegate,UIPageViewControllerDataSource,UIPageViewControllerDelegate,WMMenuViewDelegate,WMMenuViewDataSource>
@property (nonatomic, strong) UIPageViewController *pageController;
@property (nonatomic, strong) NSMutableArray *viewControllers;
@property (nonatomic, assign) NSInteger willIndex;
@property (nonatomic, strong) WMMenuView *wmmenuView;
@property (nonatomic, strong) NSArray *titles;
@end

@implementation CourseDetailViewController{
//    UIButton *_evaluateButton;//评价按钮
//    UIButton *_selectButton;
//    UIView *_navigationBottomView;
//    LWLDetailScrollView *_scrollView;
//    TCourseWebView *_detailWebView;
//    TAuditionTableView *_auditionTableView;
//    TEvaluateTableView *_evaluateTableView;
    TCourseNavHeaderView *_navigationTitleView;
    TCourseBottomView *_bottomView;//底部按钮
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self createNavigationView];
    self.navigationItem.titleView = self.wmmenuView;
//    [self createDetailView];
    [self instance];
    [self refreshBottomView];

    self.automaticallyAdjustsScrollViewInsets = NO;
    
    // Do any additional setup after loading the view.
}

- (WMMenuView*)wmmenuView {
    if (!_wmmenuView) {
        _wmmenuView = [[WMMenuView alloc]initWithFrame:CGRectMake(0, 0, 55*self.titles.count, 44)];
        _wmmenuView.delegate = self;
        _wmmenuView.dataSource = self;
        _wmmenuView.style = WMMenuViewStyleLine;
        _wmmenuView.lineColor = [UIColor redColor];
//        _wmmenuView.progressHeight = 2;
        
    }
    return _wmmenuView;
}
#pragma mark WMMenuViewDataSource
- (NSInteger)numbersOfTitlesInMenuView:(WMMenuView *)menu {
    return self.titles.count;
}

- (NSString *)menuView:(WMMenuView *)menu titleAtIndex:(NSInteger)index {
    return self.titles[index];
}

#pragma mark WMMenuViewDelegate
- (void)menuView:(WMMenuView *)menu didSelesctedIndex:(NSInteger)index currentIndex:(NSInteger)currentIndex {
    NSLog(@"%ld",index);
}

- (CGFloat)menuView:(WMMenuView *)menu titleSizeForState:(WMMenuItemState)state {
    return 14;
}

- (UIColor *)menuView:(WMMenuView *)menu titleColorForState:(WMMenuItemState)state {
    switch (state) {
        case WMMenuItemStateNormal:
            return [UIColor blackColor];
            break;
        
        default:
            return [UIColor redColor];
            break;
    }
}

- (CGFloat)menuView:(WMMenuView *)menu widthForItemAtIndex:(NSInteger)index {
    if (index == self.titles.count-1) {
        return 55;
    }
    return 35;
}

- (NSArray*)titles{
    if (!_titles) {
        _titles = @[@"详情",@"试听",@"评价"];
    }
    return _titles;
}
-(void)instance{
    self.pageIndex = 0;
    //segmentTapView
    
    //pageController
    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    self.pageController.view.frame = CGRectMake(0, 64, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) - 64-49);
    self.pageController.dataSource = self;
    self.pageController.delegate   = self;
    [self.view addSubview:self.pageController.view];
    //setAttribute pageController
    [self.pageController setViewControllers:@[self.viewControllers[0]] direction:UIPageViewControllerNavigationDirectionReverse animated:NO completion:nil];
}

//创建导航栏标题视图
- (void)createNavigationView{
    NSArray *array = @[@"详情",@"试听",@"评论"];
    _navigationTitleView = [[TCourseNavHeaderView alloc]initWithFrame:CGRectMake(0, 0, kButtonWidth*array.count, 44) titles:array];
    _navigationTitleView.delegate = self;
//    self.navigationItem.titleView = _navigationTitleView;
    
    //    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"icon_gwc"] style:UIBarButtonItemStylePlain target:self action:@selector(shopingCartAction:)];
    UIButton *cartButton = [UIButton buttonWithType:UIButtonTypeCustom];
    cartButton.frame = CGRectMake(0, 0, 34, 34);
    [cartButton setImage:[UIImage imageNamed:@"icon_gwc"] forState:UIControlStateNormal];
    [cartButton addTarget:self action:@selector(shopingCartAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightBarButtonItm = [[UIBarButtonItem alloc]initWithCustomView:cartButton];
    self.navigationItem.rightBarButtonItem = rightBarButtonItm;
    UILabel *numberLabel = [[UILabel alloc]initWithFrame:CGRectMake(cartButton.frame.size.width-15, 0, 15, 15)];
//    numberLabel.center = CGPointMake(cartButton.frame.size.width, 0);
    numberLabel.backgroundColor = RGB(225, 59, 41, 1);
    numberLabel.textColor = [UIColor whiteColor];
    [numberLabel.layer setMasksToBounds:YES];
    numberLabel.text = @"1";
    numberLabel.font = [UIFont systemFontOfSize:9];
    [numberLabel.layer setCornerRadius:numberLabel.frame.size.width/2];
    numberLabel.textAlignment = NSTextAlignmentCenter;
    [cartButton addSubview:numberLabel];
}
- (void)refreshBottomView{
    switch (self.pageIndex) {
        case 0:{
            [self.bottomView updateTitle:@"收藏" imageName:@"icon_sc" buttonIndex:1 pageIndex:self.pageIndex];
        }
            break;
        case 1:{
            [self.bottomView updateTitle:@"试听" imageName:@"icon_sxx" buttonIndex:1 pageIndex:self.pageIndex];
        }
            break;
        case 2:{
            [self.bottomView updateTitle:@"收藏" imageName:@"icon_sc" buttonIndex:1 pageIndex:self.pageIndex];
        }
            break;
        default:
            break;
    }

}





//创建具体详情页面
//- (void)createDetailView{
//    _scrollView = [[LWLDetailScrollView alloc]initWithFrame:CGRectMake(0, 64, kScreenWidth, kScreenHeight-64-49)];
//    [self.view addSubview:_scrollView];
//    _scrollView.delegate = self;
//    [_scrollView addSubview:self.detailWebView];
//    [_scrollView addSubview:self.auditionTableView];
//    [_scrollView addSubview:self.evaluateTableView];
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
//    [self.detailWebView loadRequest:request];
//    
//    
//}
//点击标题视图切换显示
- (void)clickNavigationButtonIndex:(NSInteger)btnIndex{
    self.pageIndex = btnIndex;
//    _scrollView.contentOffset = CGPointMake(kScreenWidth*btnIndex, 0);
    [self.pageController setViewControllers:@[self.viewControllers[btnIndex]] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:^(BOOL finished) {
        
    }];
    [self refreshBottomView];
}
//购物车
- (void)shopingCartAction:(UIBarButtonItem*)btnItm{
   
}
////懒加载webView
//- (TCourseWebView*)detailWebView{
//    if (!_detailWebView) {
//        _detailWebView = [[TCourseWebView alloc]initWithFrame:CGRectMake(kScreenWidth*0, 0, kScreenWidth, _scrollView.frame.size.height)];
//    }
//    return _detailWebView;
//}
//- (TAuditionTableView*)auditionTableView{
//    if (_auditionTableView == nil) {
//        _auditionTableView = [[TAuditionTableView alloc]initWithFrame:CGRectMake(kScreenWidth*1, 0, kScreenWidth, _scrollView.frame.size.height) style:UITableViewStyleGrouped];
//    }
//    return _auditionTableView;
//}
//- (TEvaluateTableView*)evaluateTableView{
//    if (_evaluateTableView == nil) {
//        _evaluateTableView = [[TEvaluateTableView alloc]initWithFrame:CGRectMake(kScreenWidth*2, 0, kScreenWidth, _scrollView.frame.size.height) style:UITableViewStyleGrouped];
//    }
//    return _evaluateTableView;
//
//}
- (TCourseBottomView*)bottomView{
    if (_bottomView == nil) {
        NSArray *array = @[
                           @{@"title":@"客服",@"imageName":@"icon_kf"},
                           @{@"title":@"试听",@"imageName":@"icon_sxx"},
                           @{@"title":@"添加",@"imageName":@"icon_gwctj"},
                           ];

        _bottomView = [[TCourseBottomView alloc]initWithFrame:CGRectMake(0, kScreenHeight-49, kScreenWidth, 49) bottomArray:array];
        [self.view addSubview:self.bottomView];
    }
    return _bottomView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark UIScrollView代理方法
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat pageWidth = self.view.frame.size.width;
    int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    UIButton *button = (UIButton*)[_navigationTitleView viewWithTag:page+100];
    if (_navigationTitleView.selectButton!=button) {
        [_navigationTitleView selectItemAtIndex:page];
        self.pageIndex = page;
        [self refreshBottomView];
    }   
}
#pragma mark UIPageViewController
-(NSMutableArray *)viewControllers{
    if (!_viewControllers) {
        _viewControllers = [NSMutableArray array];
        TCourseDetailController *TCDVC =[TCourseDetailController new];
        TAuditionViewController *TAVC = [TAuditionViewController new];
        TEvaluateViewController *TEVC = [TEvaluateViewController new];
        [_viewControllers addObject:TCDVC];
        [_viewControllers addObject:TAVC];
        [_viewControllers addObject:TEVC];
    }
    return _viewControllers;
}
// 根据数组元素，得到下标值
-(NSInteger)indexOfViewController:(UIViewController *)viewController{
    return [self.viewControllers indexOfObject:viewController];
}

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    NSInteger index = [self indexOfViewController:viewController];
    if (index == NSNotFound || index == 0) {
        return nil;
    }
    index --;
    
    return self.viewControllers[index];
}
- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    NSInteger index = [self indexOfViewController:viewController];
    if (index == NSNotFound || index == self.viewControllers.count - 1) {
        return nil;
    }
    index++;
    
    return self.viewControllers[index];
}
- (void)pageViewController:(UIPageViewController *)pageViewController willTransitionToViewControllers:(NSArray<UIViewController *> *)pendingViewControllers{
    NSInteger index = [self indexOfViewController:pendingViewControllers[0]];
    self.willIndex = index;
}

- (void)pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray<UIViewController *> *)previousViewControllers transitionCompleted:(BOOL)completed{
    if(completed){
        NSInteger index = [self indexOfViewController:previousViewControllers[0]];
        NSInteger nextIndex = 0;
        if (index > self.willIndex) {
            nextIndex = index - 1;
        }else if (index < self.willIndex){
            nextIndex = index + 1;
        }
        self.pageIndex = nextIndex;
        [self.wmmenuView selectItemAtIndex:nextIndex];
        
//        [_navigationTitleView selectItemAtIndex:nextIndex];
        [self refreshBottomView];
    }
}

#pragma mark LWLClickBottomBtnDelegate

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
