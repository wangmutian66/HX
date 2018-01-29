//
//  WMTChatViewController.m
//  HX
//
//  Created by wangmutian on 2018/1/27.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import "WMTChatViewController.h"
#import "WMTinputview.h"
#import "WMTMoreinputkeyboardView.h"
#define kInputViewH 44
@interface WMTChatViewController ()<UITableViewDataSource,UITableViewDelegate,WMTinputview>
@property(nonatomic,strong)UITableView *tableview;
@property(nonatomic,strong)WMTinputview *inputViewS;

@property(nonatomic,strong) WMTMoreinputkeyboardView *moreInput;


@end

@implementation WMTChatViewController

-(UITableView *)tableview{
      NSLog(@"222");
    if(!_tableview){
        NSLog(@"1111");
        _tableview = [[UITableView alloc] init];
        _tableview.dataSource=self;
        _tableview.delegate=self;
        _tableview.frame=CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height - kInputViewH);
//        _tableview.backgroundColor=[UIColor redColor];
    }
    return _tableview;
}

-(UIView *)inputViewS{
            NSLog(@"12222");
    if(!_inputViewS){

        _inputViewS=[WMTinputview wmt_inputview];
        _inputViewS.delegate=self;
//        _inputViewS.backgroundColor=[UIColor blueColor];
        _inputViewS.frame=CGRectMake(0, self.view.bounds.size.height - 44, self.view.bounds.size.width, 44);
    }
    return _inputViewS;
}

-(WMTMoreinputkeyboardView *)moreInput
{
    if(!_moreInput){
        _moreInput =[[WMTMoreinputkeyboardView alloc] init];
        _moreInput.frame = CGRectMake(0, CGRectGetHeight(self.view.bounds), CGRectGetWidth(self.view.bounds), kWMTMoreinputkeyboardView);
    }
    return _moreInput;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor];

    [self.view addSubview:self.tableview];
    [self.view addSubview:self.inputViewS];
    

    //隐藏底部tab
    self.navigationController.tabBarController.tabBar.hidden=YES;
    //监听键盘弹出，对相应的布局做修改
    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillChangeFrameNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        CGFloat endY=[note.userInfo [UIKeyboardFrameEndUserInfoKey] CGRectValue].origin.y;
        CGFloat tempY = endY - self.view.bounds.size.height;
        CGFloat duration=[note.userInfo [UIKeyboardAnimationDurationUserInfoKey] floatValue];
        self.view.frame=CGRectMake(0, tempY, self.view.bounds.size.width, self.view.bounds.size.height);
        [UIView animateWithDuration:duration animations:^{
            [self.view setNeedsLayout];
            self.inputViewS.wmt_y=self.view.bounds.size.height - 44;
        }];
        
        
    }];
}



-(void)wmt_inputview:(WMTinputview *) inputView moreBtnClickWith:(NSInteger) moreStyle{
    NSLog(@"------这回好了-----");
    if (self.view.frame.origin.y == 0) {
        //        [UIView animateWithDuration:0.25 animations:^{
        //            //
        //        }];
        
        [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
            CGRect tempRect = CGRectMake(0, -kWMTMoreinputkeyboardView, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds));
            self.view.frame = tempRect;
            self.moreInput.frame = CGRectMake(0, CGRectGetHeight(self.view.bounds) - kWMTMoreinputkeyboardView, CGRectGetWidth(self.view.bounds), kWMTMoreinputkeyboardView);
            //
        } completion:^(BOOL finished) {
            //
        }];
    }else
    {
//        [self xmg_dissmissMoreInputViewWithAniation:YES];
        
//        [self.inputView.textField becomeFirstResponder];
    }
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.tabBarController.tabBar.hidden=YES;
}
//
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.tabBarController.tabBar.hidden=NO;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}


-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{

    [self.view endEditing:YES];
}

@end
