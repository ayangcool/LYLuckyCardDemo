//
//  LYLuckyCardView.m
//  LYLuckyCardDemo
//
//  Created by leo on 17/2/9.
//  Copyright © 2017年 leo. All rights reserved.
//

#import "LYLuckyCardView.h"
#import "LYLuckyCardRotationView.h"

@interface LYLuckyCardView ()

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet LYLuckyCardRotationView *rotationView;

@end

@implementation LYLuckyCardView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self commonInit];
}

- (void)commonInit {
    self.contentView.transform = CGAffineTransformMakeScale([UIScreen mainScreen].bounds.size.width / 375.0, [UIScreen mainScreen].bounds.size.width / 375.0);
}

- (IBAction)drawBtnClick:(id)sender {
    [self.rotationView beignRotaion];
}

- (IBAction)closeBtnClick:(id)sender {
    [self removeFromSuperview];
}

@end
