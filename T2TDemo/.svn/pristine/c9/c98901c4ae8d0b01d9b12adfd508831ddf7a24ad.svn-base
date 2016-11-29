//
//  Constants.h
//  Examda
//  系统常量
//  Created by luoluo on 14/12/11.
//  Copyright (c) 2014年 长沙二三三网络科技有限公司. All rights reserved.
//

#ifndef Examda_Constants_h
#define Examda_Constants_h
//#import "EThemeManager.h"
//#import "UIColor+Theme.h"
//#import "UIImage+Theme.h"
//#import "UITableView+TEmptyData.h"


//typedef NS_ENUM(NSInteger, EOrderState) {
//    EOrderStateUnPay = 1,         // 未支付
//    EOrderStateUnHandle,  // 已支付未处理
//    EOrderStateFinish = 3,        // 课程已开通
//};
//
//typedef NS_ENUM(NSInteger, TabItemIndex) {
//    
//    TabItemIndexNews = 0,
//    TabItemIndexCourse = 1,
//    TabItemIndexExam = 2,
//    TabItemIndexUser = 3,
//};
//
//typedef NS_ENUM(NSInteger, ECourseType) {
//    ECourseUnkown,              //未知选项
//    ECourseBuy,                 // 付费课程
//    ECourseFree,                  // 免费课程 非购买
//    ECourseOffline,             // 本地课程
//    ECourseNotZuHe,                // 不是套餐课程  单科/精讲班 （详情页面判断用到） 非购买
//    ECourseGroup,
//};

//判断是否为iPhone 6 plus
#define IS_IPHONE6PLUS ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)
//判断是否为iPhone 6
#define IS_IPHONE6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)

#define IOS8 ([[UIDevice currentDevice].systemVersion intValue] >= 8 ? YES : NO)

#define flyAPPID_VALUE           @"55c015d3"

#define kCourseGudie @"courseFirstGudie"
//调试的时候打印 发布不执行

#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)
#define debugMethod() NSLog(@"%s", __func__)
#else
#define NSLog(...)
#define debugMethod()
#endif


/// NSError userInfo key that will contain response data
#define JSONResponseSerializerWithDataKey @"JSONResponseSerializerWithDataKey"

#define kTouristUserKey @"com.233.app.YKUserName"
#define kTouristUserID @"com.233.app.YKUserID"
#define kTouristHasBuy @"com.233.app.isBuy"
//地区信息键值
#define kAreaLocationKey @"kAreaLocationKey"
#define kAreaLocationIdKey @"kAreaLocationIdKey"

#define UMChannelId @"AppleStore"

#define k_InterestSwitch @"k_InterestSwitch" //兴趣班级设置开关
// 是否为官网发布版
#define IS_OfficialVersion 0
//Notification key
#define k_NOTI_NETWORK_ERROR @"k_NOTI_NETWORK_ERROR"        //网络异常
#define Notification_TabClick @"Notification_TabClick"      //双击Tab
#define k_NOTI_LOGIN_OUT @"loginExit" //用户注销或者退出
#define k_NOTI_LOGIN_OK @"loginOk" //用户登录成功
#define k_NOTI_UnSetPwd @"unsetpwd" //为设置密码通知
#define k_NOTI_ExamTypeChange @"requestExamType"//更换了默认的考试类别
#define k_NOTI_AreaChange @"requestAreaType"//更换了地区
#define k_NOTI_AppWillExit @"appexit"

#define kUserIdKey @"kUserIdKey"//用户id的key
#define kUserId  [kUserDefaults integerForKey:kUserIdKey]//用户id
#define kUserPwdEncryptKey @"233WX"//密码加锁的key

#define kImaWithImaName(str)  [UIImage imageNamed:str]
#define kIntegerToString(num) [NSString stringWithFormat:@"%d",num]

// app下载地址
#define kAppDownLoadUrl @"https://itunes.apple.com/cn/app/233wang-xiao/id964104520?mt=8&uo=4"


#define kAddShopCarArray @"AddShopCarArray"
#define kAddShopBookCarArray @"AddShopBookCarArray"

//信息提示

//七天内课程提示
#define TEXT_SEVENDAY_LIMIT @"七天内课程暂不支持下载！"

// 无法检测到网络情况下，提示内容
#define TEXT_NETWORK_ERROR @"网络异常，请检查网络连接"

//出错啦
#define TEXT_REQUEST_ERROR @"sorry，加载失败"

//无数据
#define TEXT_DATA_EMPTY @"sorry，暂无数据"

#define k_NavBar_REDCOLOR RGB(225, 59, 41, 1)
// 有网络，网络请求超时或者服务器发生异常无法连接到服务器，提示内容
#define TEXT_SERVER_NOT_RESPOND @"服务器或网络异常,请稍后重试"

//一般文字高亮颜色值
#define kContentLightColor  RGB_255(50, 143, 222)
//一般文字正常颜色值
#define kContentNormalColor  RGB_255(58, 69, 67)
//背景色
#define kdefaultBackgroundColor RGB_255(243, 243, 243)

#define kGrayTextColor RGB_255(159, 159, 159)
#define kWhitetextColor RGB_255(255, 255, 255)

#define kTitleTextColor [UIColor colorWithHexString:@"#3a454f"]

//#define

/**
 *  常用的默认背景图片
 */
#define kDefaultIma300x190 kImaWithImaName(@"ico_Default_300x198")
#define kDefaultIma640x320 kImaWithImaName(@"ico_Default_640x320")
//用到的常用字体
#define kCommonFont_18px  [UIFont fontWithName:@"STHeitiSC-Light" size:9]
#define kCommonFont_20px  [UIFont fontWithName:@"STHeitiSC-Light" size:10]
#define kCommonFont_22px  [UIFont fontWithName:@"STHeitiSC-Light" size:11]
#define kCommonFont_24px  [UIFont fontWithName:@"STHeitiSC-Light" size:12]
#define kCommonFont_26px  [UIFont fontWithName:@"STHeitiSC-Light" size:13]
#define kCommonFont_28px  [UIFont fontWithName:@"STHeitiSC-Light" size:14]
#define kCommonFont_30px  [UIFont fontWithName:@"STHeitiSC-Light" size:15]
#define kCommonFont_32px  [UIFont fontWithName:@"STHeitiSC-Light" size:16]
#define kCommonFont_34px  [UIFont fontWithName:@"STHeitiSC-Light" size:17]
#define kCommonFont_36px  [UIFont fontWithName:@"STHeitiSC-Light" size:18]
#define kCommonFont_38px  [UIFont fontWithName:@"STHeitiSC-Light" size:19]
#define kCommonFont_40px  [UIFont fontWithName:@"STHeitiSC-Light" size:20]

// Notification to close the menu 课程圆形菜单关闭通知
//#define kKYNCircleMenuClose @"KYNCircleMenuClose"
//
//#define kESCEditionSwitch @"kESCEditionSwitch"
//#define kESCStudyLogClick @"kESCStudyLogClick"
//#define kESCPlayerPause @"kESCPlayerPause"
//
////微信支付结果通知
//#define ORDER_PAY_NOTIFICATION @"WXPAY"



// 题库查看答案通知
#define ECheckExameAnswerNotification   @"checkExameAnswerNotification"

// 选中按钮发通知
#define EScrollToNextExameNotification  @"scrollToNextExameNotification"
#define EShowExameAnswerNotification    @"showExameAnswerNotification"
#define EExamSettingChangeNotification  @"examSettingChangeNotification"
static NSString *const EAddIntegralChangeNotificationName = @"IntegralChange";

#define kExamFontSizeChange     @"exameFontSizeChange"
#define kExamCheckAllAnalysis   @"examCheckAllAnalysis"
#define kExamOnlyCheckError     @"examOnlyCheckError"
#define kExamThmemeChange       @"examThmemeChange"

//界面入口
//typedef NS_ENUM(NSInteger, ESCEnterFrom) {
//    ESCEnterFromUnknow, //未知
//    ESCEnterFromHome,   //课程首页入口
//    ESCEnterFromFilter,     // 课程筛选返回
//    ESCEnterFromSHopCar,    // 购物车入口
//    ESCEnterFromStutyHome,  //课程学习详情界面
//    ESCEnterFromPaySuccess, //支付成功界面
//    ESCEnterFromOrderManager, //订单管理界面
//    ESCEnterFromVIPExam, //VIP题库
//    ESCEnterFromJFView, //来自积分页面
//    ESCEnterFromEBookHome, //电子书首页
//};
//
//typedef enum : NSUInteger {
//    EExameModelType     = 1,
//    EChapterType        = 2,//章节练习
//    EDayPracticeType    = 3,//每日一练
//    EEasyErrorType      = 5,//易错题
//    EChallengeType      = 6,//挑战
//    EVIPExamType        = 7,//VIP
//    EErrorExameType     = 8,//错题题型
//    EErrorChaperType    = 9,//错题章节展示
//    ECollectExamType    = 10,//收藏
//    ENoteExamType       = 11,
//    ECollectChapterType = 12//收藏按章节
//} ExameType;
//
//typedef enum : NSUInteger {
//    ExamePracticeModel,  // 练习模式
//    ExameTestingModel   // 考试模式  
//} ExameModelType;
//
//
//typedef enum : NSUInteger {
//    ExameSubjectJiJin = 0,
//    ExameSubjectErJian = 1,
//} ExameSubject;

// 题库默认加载试题数
#define kExamePageSize 20

// 题库图片scaleSzie
#define kExamImageSize CGSizeMake(kScreenWidth - 20, 60)

// DropDownMenu高度
#define kDropDownMenuHeight 44

#define RGB(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

// 导航栏颜色
#define NavRGB  RGB(49, 144, 221, 1)

// 护眼模式
#define kEyeshieldLightBgColor RGB(202, 227, 216, 1)
#define kEyeshieldDarkBgColor  RGB(185, 217, 203, 1)
#define kEyeshieldLineBgColor  RGB(160, 205, 185, 1)

// 夜间模式颜色
#define kNightDarkTextColor  RGB(205, 208, 211, 1)
#define kNightLightTextColor RGB(141, 143, 148, 1)

#define kNightTopBarColor   RGB(29, 32, 38, 1)
#define kNightBottomBarColor   RGB(97, 100, 100, 1)

#define kNightLineColor     RGB(21, 23, 28, 1)

#define kNightDarkBgcolor   RGB(38, 42, 50, 1)
#define kNightLightBgColor  RGB(47, 51, 61, 1)

#define kNightOptionColor   RGB(70, 75, 86, 1)

#define kNightRedColor      RGB(171, 53, 27, 1)
#define kNightGreenColor    RGB(92, 151, 25, 1)
#define kNightYellowColor   RGB(179, 104, 5, 1)


#define kNightRedOptionColor RGB(171, 53, 27, 1)

// 正常模式颜色
#define kDarkTextColor      RGB(51, 51, 51, 1)
#define kLightTextColor     RGB(138, 138, 138, 1)
#define kDLightTextColor    RGB(128, 128, 128, 1)
#define kEditTextColor      RGB(58, 69, 79, 1)

#define kLightGrayBgColor   RGB(245, 245, 245, 1)
#define kYellowColor        RGB(247, 147, 0, 1)
#define kRedColor           RGB(246, 79, 0, 1)
#define kRedTextColor       RGB(243, 95, 69, 1)
//RGB(124, 206, 156, 1)
#define kGreenColor         RGB(77, 197, 126, 1)

#define kLineBgColor        RGB(219, 219, 219, 1)
#define kGrayLineColor      RGB(184, 184, 184, 1)
#define kSwitchTintColor    RGB(229, 229, 229, 1)

#define kRedOptionTextColor RGB(225, 59, 41, 1)
#define kGrayBtnColor       RGB(54, 79, 97, 1)

#define kBorderColor        RGB(203, 206, 208, 1)

static NSString * const userSelectState = @"userSelectState";
static NSString * const userSelectStateID = @"userSelectStateID";

#define UnLoginCode 10001
#define RequestOKCode 10006

#define QQAppName       @"qq"
#define SinaAppName     @"sina"
#define WeiXinAppName   @"wechat"
#define kExamdaKey @"ea9377ea"
//typedef enum : NSUInteger {
//    EExamDownLoadStateNot,                      // 未下载
//    EExamDownLoadStateReady,                    // 准备下载
//    EExamDownLoadStateExameDoing,               // 正在下载试卷
//    EExamDownLoadStateExameDoneFailed,          // 下载试卷失败
//    EExamDownLoadStateExameDetailDoing,         // 正在下载试卷详情页
//    EExamDownLoadStateExameDetailDoneFailed,    // 下载试卷详情页失败
//    EExamDownLoadStateExameImageDoing,          // 正在下载图片合集
//    EExamDownLoadStateExameImageDoneFailed,     // 下载保存图片合集失败
//    EExamDownLoadStateAudioDoing,               // 正在下载音频
//    EExamDownLoadStateAudioFailed,              // 下载音频失败
//    EExamDownLoadStateSaveToDB,
//    EExamDownLoadStateFinish,
//    EExamDownLoadStateError,
//    EExamDownLoadStateCancle                    // 取消下载
//} EExamDownLoadState;
//
//static float ECSILDE_HEIGHT;

// 咨询新闻url
//#define kNewsFirstUrl @"http://wx.233.com/search/mobilenews/preview/newsPreview.asp?NewsID=%d"

// 请求  API
#define kLoginPostUrl @"account/login/loginNew"//登录
#define kMyCourseListURL @"study/course/courseList?from=mobile" //我的课程
#define kAreaUrl @"news/area"

/**
 *  考试类别配置数据
 */
// tikuFlag   0免费题库,1只有收费题库,2即有收费又有免费,3无题库
#define kExamTypeUrl @"tiku/category/tags"
//#define kExamTypeUrl @"tiku/category/marks"

/**
 *  Param 
 *  课程编号
 *  index 返回对应的Index值 默认不传,切换年份时带入 
 *  from Pc端不用传,移动端固定值: mobile
 */
#define kCourseDetailsURL @"study/course/detail/"

#define kFreeCourseURL @"study/myclass/getbz?"

//参数 course book
#define KBuyGetPriceURL @"study/orders/price"

//参数 id 要删除的id types 类型 1课程 2 书籍  post
#define KBuyDeleteCourseURL @"study/orders/delshop"

#define KGetCourseInfoURL @"study/myclass/getmyclassinfo?"

//course book trueName tel addres
#define KAddCourseOrderURL @"study/orders/addorder"

#define KBuildOrdersURL @"v1/order/build/order"

#define KGetMyOrdersURL @"study/orders/getorders?"

// 获取  study/orders/getshop?
#define KBuyOderURL @"study/orders/getnewshop?"

//id   types
#define KDeleteShopURL @"study/orders/delshop"

//获取课程简介
#define KCourseInfoURL @"study/myclass/getmyclassinfo?"

//询问是否掉线
#define KUserDropOut @"study/repeat"

//删除订单
#define KDeleteOrder @"study/orders/delall"

//订单详情
#define KOrderDetail @"study/orders/orderinfo/"

/**
 *  判断是否已经登陆
 *
 *  @return yes表示已经登陆 no表示没有登陆
 */
NS_INLINE BOOL curentLoginState(){
    EUserInfoManager *manger = [EUserInfoManager shareInstance];
    return manger.isLogin;
}

typedef void(^RequestData)(NSArray *arrData,T2TResponse *responseObject);

//新版课程 获取免费课程  v2.0 加v2
#define KTGCourseURL @"study/myclassv2/getmyclass"

// 获取优惠券
//#define KTGCouponURL @"study/myclassv2/getcoupon"
#define KTGCouponURL @"v1/course/order/getcoupon"

// 领取优惠券
#define KTGGetCouponURL @"study/myclassv2/receivecoupon"

//我的课程
#define ESCGetUserCourseURL @"study/myclassv2/getusercourse"

//套餐班子课程

#define ESCGetGroupURL @"study/myclassv2/getmyclasscomtent?myclassid="

//我的课程视频列表 id myclassid teacherid

#define ESCGetCourseListURL @"study/myclassv2/getdetail?"

//课程版本切换
#define ESCGedEdtionURL @"study/myclassv2/getedition"

//学习记录
#define ESCGetStudyLogURL @"study/myclassv2/getstudylog"

//获取免费课程列表 courseId=0&myclassid=15371
#define ESCGetFreeListURL @"study/myclassv2/getfree?"

//我的收藏
#define ESCGetMyCollectURL @"study/myclassv2/getfavorites"
//删除收藏
#define ESCDeleteCollectURL @"study/myclassv2/delfavorites"
#endif
