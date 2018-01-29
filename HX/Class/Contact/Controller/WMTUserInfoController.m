//
//  WMTUserInfoController.m
//  HX
//
//  Created by wangmutian on 2018/1/27.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import "WMTUserInfoController.h"
#import "WMTChatViewController.h"
#import "WmttabController.h"
@interface WMTUserInfoController ()
@property (weak, nonatomic) IBOutlet UILabel *username;

@end

@implementation WMTUserInfoController
//快速初始化vc
+(instancetype)wmt_UserinfoVc{
    return [[UIStoryboard storyboardWithName:NSStringFromClass(self) bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self wmt_addBtns];
  
}

-(void) wmt_addBtns{
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    self.tableView.tableFooterView=footerView;
    UIButton *sendMsgBtn=[[UIButton alloc]  init];
    [sendMsgBtn addTarget:self action:@selector(sendMsg) forControlEvents:UIControlEventTouchUpInside];
    sendMsgBtn.backgroundColor=[UIColor greenColor];
    [sendMsgBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [sendMsgBtn setTitle:@"发消息" forState:UIControlStateNormal];
    sendMsgBtn.frame=CGRectMake(30, 30, self.view.bounds.size.width-60, 44);
//    [self.view addSubview:sendMsgBtn];
    sendMsgBtn.layer.cornerRadius = 5;
    sendMsgBtn.layer.masksToBounds=YES;
    [footerView addSubview:sendMsgBtn];
//    sendMsgBtn setBackgroundImage:[] forState:UISTATE
}


-(void)sendMsg{
    WMTChatViewController *settingVc=[[WMTChatViewController alloc] init];
    //    settingVc
    //隐藏底部条
    //这个属性必须要在跳转之前设置
//    settingVc.hidesBottomBarWhenPushed = YES;
//    [self.navigationController pushViewController:settingVc animated:YES];
    
    WmttabController *tabBarVC=(WmttabController *)[[UIApplication sharedApplication].keyWindow rootViewController];
    tabBarVC.selectedViewController=tabBarVC.viewControllers[0];
    [(UINavigationController *) tabBarVC.viewControllers[0] pushViewController:settingVc animated:YES];
    
    
}


@end
