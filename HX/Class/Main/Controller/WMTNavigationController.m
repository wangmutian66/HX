//
//  WMTNavigationController.m
//  HX
//
//  Created by wangmutian on 2018/1/25.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import "WMTNavigationController.h"
#import "UINavigationBar+Awesome.h"

@interface WMTNavigationController ()

@end

@implementation WMTNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationBar lt_setBackgroundColor:[UIColor blackColor]];
    self.navigationBar.titleTextAttributes=@{NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    self.navigationBar.tintColor= [UIColor whiteColor];
}

-(UIStatusBarStyle) preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
