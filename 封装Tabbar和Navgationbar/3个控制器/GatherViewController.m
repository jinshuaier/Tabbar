//
//  GatherViewController.m
//  封装Tabbar和Navgationbar
//
//  Created by USER on 16/3/10.
//  Copyright © 2016年 UnderZero. All rights reserved.
//

#import "GatherViewController.h"
#import "TitleButton.h"

@interface GatherViewController ()

@end

@implementation GatherViewController

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
    
    TitleButton *titleButton = [[TitleButton alloc]init];
    [titleButton setTitle:@"汇总" forState:UIControlStateNormal];
    self.navigationItem.titleView = titleButton;
    
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
