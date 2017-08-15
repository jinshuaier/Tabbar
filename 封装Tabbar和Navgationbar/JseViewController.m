//
//  JseViewController.m
//  封装Tabbar和Navgationbar
//
//  Created by USER on 16/3/10.
//  Copyright © 2016年 UnderZero. All rights reserved.
//

#import "JseViewController.h"
#import "Header.h"
@interface JseViewController ()

@end

@implementation JseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加子控制器
    [self addOneChildVcClass:[MainViewController class] title:@"首页" image:@"tab_ico_index_nor" selectedImage:@"tab_ico_index_set"];
    [self addOneChildVcClass:[GatherViewController class] title:@"汇总" image:@"tab_ico_alliance_nor" selectedImage:@"tab_ico_alliance_sel"];
    [self addOneChildVcClass:[MineViewController class] title:@"我的" image:@"tab_ico_my_nor" selectedImage:@"tab_ico_my_set"];
    
    
    // 替换tabbar
    //    self.tabBar = [[HWTabBar alloc] init];
    //  KVC == key value coding
    [self setValue:[[JseTabBar alloc] init] forKeyPath:@"tabBar"];
    
}

/**
 * 添加一个子控制器
 * @param vc : 子控制器
 * @param title : 标题
 * @param image : 图片
 * @param selectedImage : 选中的图片
 */
- (void)addOneChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    [vc.tabBarItem setTitleTextAttributes:@{
                                            NSForegroundColorAttributeName : [UIColor blueColor]
                                            } forState:UIControlStateSelected];
    
     // 同时设置tabbar每个标签的文字 和 navigationBar的文字
    
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    //        vc.view.backgroundColor = [UIColor redColor];
    // vc.navigationController.navigationBar.tintColor = [UIColor blackColor];
    // 包装一个导航控制器后,再成为tabbar的子控制器
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}

/**
 * 添加一个子控制器
 * @param vcClass : 子控制器的类名
 * @param title : 标题
 * @param image : 图片
 * @param selectedImage : 选中的图片
 */
- (void)addOneChildVcClass:(Class)vcClass title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    UIViewController *vc = [[vcClass alloc] init];
    [self addOneChildVc:vc title:title image:image selectedImage:selectedImage];
}



@end
