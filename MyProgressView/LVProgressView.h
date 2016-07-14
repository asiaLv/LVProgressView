//
//  LVProgressView.h
//  MyProgressView
//
//  Created by lvAsia on 16/7/14.
//  Copyright © 2016年 answe lv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LVProgressView : UIView
@property (strong, nonatomic) UILabel *hintLabel;

+ (LVProgressView *)progressView;
- (void)show;
- (void)dismiss;
@end
