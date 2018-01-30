//
//  WMTMoreinputkeyboardView.m
//  HX
//
//  Created by wangmutian on 2018/1/28.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import "WMTMoreinputkeyboardView.h"

@interface WMTMoreinputkeyboardView()
/** 添加btn**/
@property(nonatomic,strong) NSMutableArray *btns;
/**数组的标题**/
@property(nonatomic,strong) NSArray *btnsTitle;
@end

@implementation WMTMoreinputkeyboardView
//这种写法是懒加载
-(NSArray *)btnsTitle{
    if(!_btnsTitle){
//        NSString *emojiPath = [[NSBundle mainBundle] pathForResource:@"ISEmojiList" ofType:@"plist"];
//        _btnsTitle = [NSArray arrayWithContentsOfFile:emojiPath];
//        for (NSString *text in _btnsTitle) {
////            KYExpressionItem *item = [KYExpressionItem itemWithEmoji:text];
////            [emojiItems addObject:item];
//            NSLog(@" text: %@",text);
//        }
//        NSLog(@"=======================s");
//        NSLog(@"btntitle: %@",_btnsTitle);
        _btnsTitle=@[@"图片",@"视频聊天"];
    }
    return _btnsTitle;
}


-(NSMutableArray *)btns{
    if(!_btns){
        _btns=[NSMutableArray array];
    }
    return _btns;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor=BackGround243Color;
        //添加子控件
        for(NSString *title in self.btnsTitle){
            [self wmt_setBtnWithTile:title];
        }
    }
    return self;
}


-(void)layoutSubviews{
    [super layoutSubviews];
    NSLog(@" ===> layoutSubviews  ");
    CGFloat btnW = 60;
    CGFloat btnH = btnW;
    CGFloat margin = 10;
    CGFloat orx = 10;
    CGFloat ory = 10;
    
    NSInteger maxRowCount  = 2;
    NSInteger maxColCount = 4;
    CGFloat colMargin  = (CGRectGetWidth(self.bounds) - 2*orx - maxColCount * btnW)/(maxColCount + 1);
     CGFloat rowMargin  = (CGRectGetWidth(self.bounds) - 2*ory - maxRowCount * btnH)/(maxRowCount + 1);
    
    NSInteger index=0;
    NSLog(@" -----1------- ");
    for(UIButton *btn in self.btns){
        NSLog(@" ------------ ");
        if(index < (maxRowCount * maxColCount)){
            NSInteger col = index % maxColCount;
            NSInteger row= index / maxColCount;
            btn.frame = CGRectMake(orx+ col*(btnW + colMargin) , ory + row*(btnH + rowMargin), btnW, btnH);
        }
       
        index++;
    }
}

#pragma  - 添加按钮
-(void)wmt_setBtnWithTile:(NSString *) title{
    UIButton *btn  = [[UIButton alloc] init];
    btn.backgroundColor=[UIColor redColor];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:13.0];
    [btn addTarget:self action:@selector(moreinputBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    [self.btns addObject:btn];
    
}
-(void)moreinputBtnClick:(UIButton *)btn{
    
    NSLog(@"---BTN:%@---",btn.titleLabel.text);
}

@end
