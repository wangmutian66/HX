//
//  WMTinputview.m
//  HX
//
//  Created by wangmutian on 2018/1/27.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import "WMTinputview.h"
#import "WMTMoreinputkeyboardView.h"
@implementation WMTinputview
+(instancetype)wmt_inputview{

    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}

- (IBAction)dhua:(id)sender {
   
}

- (IBAction)dhua1:(id)sender {
}


- (IBAction)dhua2:(id)sender {
    NSLog(@"--------");
//    [UIView animateWithDuration:1 animations:^{
//
//        self.wmt_y=self.wmt_height;
//        NSLog(@"---%f----",self.wmt_height);
//        //self.frame.origin.y=200;
////        self.backgroundColor=[UIColor redColor];
//    }];
}

- (IBAction)moreBtnClick:(id)sender {
    // 1.如果textField是编辑样式,那就取消它的编辑状态
    if ([self.textField isFirstResponder]) {
        [self.textField resignFirstResponder];
    }
    NSLog(@"more1");

    // 2.根据下方keyboard的高度(控制器.view的y值,来确定它的滑入滑出状态)
    
    if ([self.delegate respondsToSelector:@selector(wmt_inputview:moreBtnClickWith:)]) {
        NSLog(@"more2");
        [self.delegate wmt_inputview:self moreBtnClickWith:0];
       
    }
//
//    // 需要注意的是,设计到textfield是否是第一响应者时,注意其执行的先后顺序即可
//    if (!self.voiceBtn.isHidden) {
//        // 修改输入方式
//        [self changeInputStyle: self.inputStyleBtn];
//    }
    
    
    
    
}





@end
