//
//  LYLuckyCardCellView.m
//  LYLuckyCardDemo
//
//  Created by leo on 17/2/9.
//  Copyright © 2017年 leo. All rights reserved.
//

#import "LYLuckyCardCellView.h"

@interface LYLuckyCardCellView ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation LYLuckyCardCellView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 20)];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.font = [UIFont systemFontOfSize:11];
    self.label.center = CGPointMake(self.bounds.size.width / 2.0, self.bounds.size.height / 2.0 - 20);
    [self addSubview:self.label];
}

- (void)configCell:(NSInteger)type {
    self.label.text = [NSString stringWithFormat:@"第%@个", @(type)];
}

@end
