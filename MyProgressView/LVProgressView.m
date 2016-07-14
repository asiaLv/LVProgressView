//
//  LVProgressView.m
//  MyProgressView
//
//  Created by lvAsia on 16/7/14.
//  Copyright © 2016年 answe lv. All rights reserved.
//

#import "LVProgressView.h"
@interface LVProgressView ()
@property (strong, nonatomic) UIActivityIndicatorView *indicatorView;
@property BOOL isShowing;
@end
@implementation LVProgressView

+ (LVProgressView *)progressView
{
    static LVProgressView *obj = nil;
    if (obj == nil) {
        obj = [[LVProgressView alloc] init];
    }
    return obj;
}

- (instancetype)init
{
    if (self = [super init]) {
        self.frame = [UIScreen mainScreen].bounds;
        self.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.2];
        self.indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        self.indicatorView.center = self.center;
        self.indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
        [self addSubview:self.indicatorView];
        
        self.hintLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
        self.hintLabel.textAlignment = NSTextAlignmentCenter;
        self.hintLabel.textColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
        self.hintLabel.font = [UIFont systemFontOfSize:16.0];
        self.hintLabel.minimumScaleFactor = 0.5;
        self.hintLabel.center = CGPointMake(CGRectGetWidth(self.frame)*0.5, CGRectGetMaxY(self.indicatorView.frame) + 20);
        [self addSubview:self.hintLabel];
        
        self.isShowing = NO;
    }
    return self;
}

- (void)show
{
    if (self.isShowing) [self dismiss];
    
    if (self.isShowing == NO) {
        self.isShowing = YES;
        UIViewController *rootViewController = [[[UIApplication sharedApplication] keyWindow] rootViewController];
        self.frame = rootViewController.view.frame;
        [rootViewController.view addSubview:self];
    }
    
    [self.indicatorView startAnimating];
}

- (void)dismiss
{
    if (self.isShowing == YES) {
        self.isShowing = NO;
        self.hintLabel.text = @"";
        [self removeFromSuperview];
    }
    [self.indicatorView stopAnimating];
}

@end
