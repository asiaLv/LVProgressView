//
//  ViewController.m
//  MyProgressView
//
//  Created by lvAsia on 16/7/14.
//  Copyright © 2016年 answe lv. All rights reserved.
//

#import "ViewController.h"
#import "LVProgressView.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [[LVProgressView progressView] show];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
