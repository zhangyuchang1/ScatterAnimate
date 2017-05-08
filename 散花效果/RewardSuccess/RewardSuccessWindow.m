//
//  SignSuccessWindow.m
//  GameMall
//
//  Created by zyc on 16/8/2.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "RewardSuccessWindow.h"
static CGFloat SuccessWindow_width = 270;
static CGFloat SuccessWindow_hight = 170;


@implementation RewardSuccessWindow

- (instancetype)initWithFrame:(CGRect)frame
{
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    self = [super initWithFrame:CGRectMake((screenSize.width - SuccessWindow_width)/2.0 , (screenSize.height - SuccessWindow_hight)/2.0, SuccessWindow_width, SuccessWindow_hight)];
    
    if (self)
    {
        [self configSubViews];
    }
    return self;
}
- (void)configSubViews
{
    self.backgroundColor = [UIColor whiteColor];
    self.layer.cornerRadius = 10;
    self.layer.masksToBounds = YES;
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 45, SuccessWindow_width, 22)];
    titleLabel.text = @"恭喜您，领取成功！";
    titleLabel.font = [UIFont systemFontOfSize:19.0];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:titleLabel];
    
    UILabel *expLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 75, SuccessWindow_width, 43)];
    expLabel.font = [UIFont systemFontOfSize:15];
    expLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:expLabel];

    NSString *string = @"获得经验：+5";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:15] range:NSMakeRange(0, string.length)];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"MarkerFelt-Thin" size:35] range:NSMakeRange(5,2)];
    NSShadow *shadow =[[NSShadow alloc] init];
    shadow.shadowOffset = CGSizeMake(1, 3);
    [attributedString addAttribute:NSShadowAttributeName value:shadow range:NSMakeRange(5,2)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor yellowColor] range:NSMakeRange(5,2)];
    expLabel.attributedText = attributedString;

    UILabel *bottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 135, SuccessWindow_width, 22)];
    bottomLabel.text = @"可以在我的->我的奖励中查看获得奖励";
    bottomLabel.font = [UIFont systemFontOfSize:13.0];
    bottomLabel.textAlignment = NSTextAlignmentCenter;
    bottomLabel.textColor = [UIColor colorWithRed:177/255.0 green:177/255.0 blue:177/255.0 alpha:1];
    
    [self addSubview:bottomLabel];
}

@end
