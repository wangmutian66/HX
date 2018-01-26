//
//  ViewController.h
//  HX
//
//  Created by wangmutian on 2018/1/24.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *testReg;
- (IBAction)btnReg:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *username;
@property (weak, nonatomic) IBOutlet UILabel *password;

@end

