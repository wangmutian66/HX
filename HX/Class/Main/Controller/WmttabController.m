//
//  WmttabController.m
//  HX
//
//  Created by wangmutian on 2018/1/25.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import "WmttabController.h"

@interface WmttabController ()

@end

@implementation WmttabController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIColor *setColor  = [UIColor colorWithRed:0
                                         green:190 / 255.0
                                          blue:12 / 255.0
                                         alpha:1];
    for (UINavigationController *nav in self.childViewControllers) {
        [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:setColor} forState:UIControlStateSelected];
    }
    self.tabBar.tintColor= setColor;
}


@end
