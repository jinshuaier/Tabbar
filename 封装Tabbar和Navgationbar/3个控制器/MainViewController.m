//
//  MainViewController.m
//  封装Tabbar和Navgationbar
//
//  Created by USER on 16/3/10.
//  Copyright © 2016年 UnderZero. All rights reserved.
//

#import "MainViewController.h"
#import "TitleButton.h"
#import "TCHGGViewController.h"
#import "JseViewController.h"
#import "OtherViewController.h"
@interface MainViewController ()
@property(nonatomic , strong) UIWindow *window;
@end

@implementation MainViewController
-(void)viewWillAppear:(BOOL)animated{
    [self viewDidAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
   [self.navigationController setNavigationBarHidden:NO animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //改变导航条的颜色
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    // Do any additional setup after loading the view.
    //    初始化导航栏内容
    [self setupNav];
}
/**
 *  初始化导航栏
 */
- (void)setupNav{
    
    //左边导航栏的按钮
    UIButton *leftButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 22, 20)];
    // Add your action to your button
    [leftButton addTarget:self action:@selector(barButtonItemsao) forControlEvents:UIControlEventTouchUpInside];
//    [leftButton setBackgroundImage:[UIImage imageNamed:@"扫一扫"] forState:(UIControlStateNormal)];
    [leftButton setTitle:@"扫一扫" forState:(UIControlStateNormal)];
    UIBarButtonItem *barleftBtn = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    self.navigationItem.leftBarButtonItem = barleftBtn;
    
    //右边导航栏的按钮

    // Add your action to your button
    self.navigationItem.title = @"金帅儿的订单";
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor greenColor],
                                                                    NSFontAttributeName : [UIFont boldSystemFontOfSize:10]};
    
    
    
//    TitleButton *titleButton = [[TitleButton alloc]init];
//    [titleButton setTitle:@"金帅儿" forState:UIControlStateNormal];
//    [titleButton setImage:[UIImage imageNamed:@"tab_ico_index_nor@2x"] forState:(UIControlStateNormal)];
//    self.navigationItem.titleView = titleButton;
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.frame = CGRectMake(200, 100, 100, 100);
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    
    
}
#pragma mark -- btn的点击事件
-(void)click
{
    NSLog(@"跳转");
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    self.window.backgroundColor = [UIColor whiteColor];
//    self.window.rootViewController  = [[JseViewController alloc]init];
    OtherViewController *jvc = [[OtherViewController alloc]init];
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:jvc animated:YES];
    self.hidesBottomBarWhenPushed = NO;
     //    TCHGGViewController *HGGvc = [[TCHGGViewController alloc]init];
//    HGGvc.
//    self.hidesBottomBarWhenPushed = YES;
//    [self.navigationController pushViewController:HGGvc animated:YES];
//    self.hidesBottomBarWhenPushed = NO;
}
#pragma mark -- Item的点击事件
-(void)barButtonItemsao{
    NSLog(@"左边的点击事件");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
