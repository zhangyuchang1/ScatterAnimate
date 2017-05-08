//
//  ViewController.m
//  散花效果
//
//  Created by mac on 17/5/8.
//  Copyright © 2017年 YJ. All rights reserved.
//

#import "ViewController.h"
#import "RewardSuccess.h"

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
- (IBAction)click:(UIButton *)sender {
    [RewardSuccess show];
}


@end
