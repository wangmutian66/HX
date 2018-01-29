//
//  WMTinputview.h
//  HX
//
//  Created by wangmutian on 2018/1/27.
//  Copyright © 2018年 wangmutian. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WMTinputview;
@protocol WMTinputview <NSObject>
//@optional
/** 更多按钮的点击 */
- (void)wmt_inputview:(WMTinputview *)inputView moreBtnClickWith:(NSInteger)moreStyle;

@end

@interface WMTinputview : UIView
+(instancetype) wmt_inputview;
- (IBAction)dhua:(id)sender;
- (IBAction)dhua1:(id)sender;
- (IBAction)dhua2:(id)sender;

- (IBAction)moreBtnClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
///** 代理 */

/** 代理 */
@property (nonatomic, weak) id<WMTinputview> delegate;
@end
