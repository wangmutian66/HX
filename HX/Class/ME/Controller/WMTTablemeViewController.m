//
//  WMTTablemeViewController.m
//  HX
//
//  Created by wangmutian on 2018/1/25.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import "WMTTablemeViewController.h"

@interface WMTTablemeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *username;

@end

@implementation WMTTablemeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"我";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

@end
