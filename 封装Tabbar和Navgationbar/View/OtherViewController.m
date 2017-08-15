//
//  OtherViewController.m
//  封装Tabbar和Navgationbar
//
//  Created by 胡高广 on 2017/8/15.
//  Copyright © 2017年 UnderZero. All rights reserved.
//

#import "OtherViewController.h"
#import "Header.h"
@interface OtherViewController ()

@end

@implementation OtherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    // 添加子控制器
    [self addOneChildVcClass:[hViewController class] title:@"呵呵" image:@"tab_ico_index_nor" selectedImage:@"tab_ico_index_set"];
    [self addOneChildVcClass:[gViewController class] title:@"嘿嘿" image:@"tab_ico_alliance_nor" selectedImage:@"tab_ico_alliance_sel"];
    [self addOneChildVcClass:[bViewController class] title:@"哈哈" image:@"tab_ico_my_nor" selectedImage:@"tab_ico_my_set"];
    [self addOneChildVcClass:[hViewController class] title:@"呵呵" image:@"tab_ico_index_nor" selectedImage:@"tab_ico_index_set"];
    [self addOneChildVcClass:[gViewController class] title:@"嘿嘿" image:@"tab_ico_alliance_nor" selectedImage:@"tab_ico_alliance_sel"];
   
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
