//
//  ViewController.m
//  HX
//
//  Created by wangmutian on 2018/1/24.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import "ViewController.h"
#import <HyphenateLite/HyphenateLite.h>
#import <Hyphenate/Hyphenate.h>
#ifdef __OBJC__
//#import <HelpDesk/HelpDesk.h>
//#import "HelpDeskUI.h"
#endif
//不包含实时音视频的添加
#ifdef __OBJC__
//#import <HelpDeskLite/HelpDeskLite.h>
//#import "HelpDeskUI.h"
#endif
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnReg:(id)sender {
    NSLog(@"1111");
//    EMError *error = [[EMClient sharedClient] registerWithUsername:@"810反反复复01" password:@"111111"];
//    HError *error1 = [[HChatClient sharedClient] registerWithUsername:@"username" password:@"password"];
//    if (error==nil) {
//        NSLog(@"注册成功");
//    }else{
//        NSLog(@" %@",error1.code);
//        NSLog(@"注册失败");
//    }
}

//同步注册
-(void)test1{
    
}
@end
