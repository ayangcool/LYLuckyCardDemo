//
//  LYRootViewController.m
//  LYLuckyCardDemo
//
//  Created by leo on 17/2/9.
//  Copyright © 2017年 leo. All rights reserved.
//

#import "LYRootViewController.h"
#import "LYLuckyCardView.h"

@interface LYRootViewController ()

@end

@implementation LYRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showLuckyCardViewBtnClick:(id)sender {
    LYLuckyCardView *luckyCardView = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([LYLuckyCardView class]) owner:nil options:nil] firstObject];
    [self.view addSubview:luckyCardView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
