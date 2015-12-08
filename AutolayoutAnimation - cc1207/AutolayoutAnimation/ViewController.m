//
//  ViewController.m
//  AutolayoutAnimation
//
//  Created by 陈诚 on 15/12/7.
//  Copyright © 2015年 陈诚. All rights reserved.
//

#import "ViewController.h"
#import "HomePageAnimationUtil.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *topTitileLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomTitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *phoneIconImageView;
@property (weak, nonatomic) IBOutlet UILabel *topTipsLabel;
@property (weak, nonatomic) IBOutlet UIView *bottomTipsView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textFieldBottomLineConstraint;
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;

@end

@implementation ViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    _topTitileLabel.transform = CGAffineTransformMakeTranslation(0, -200);
    _bottomTitleLabel.transform = CGAffineTransformMakeTranslation(0, -200);
    _textFieldBottomLineConstraint.constant = 0;
    _phoneIconImageView.transform = CGAffineTransformMakeTranslation(-200, 0);
    _registerBtn.transform = CGAffineTransformMakeTranslation(400, 0);
}

- (void)viewDidAppear:(BOOL)animated
{
    [HomePageAnimationUtil titleAnimationWithLabel:_topTitileLabel withView:self.view];
    
    [HomePageAnimationUtil titleAnimationWithLabel:_bottomTitleLabel withView:self.view];
    
    [HomePageAnimationUtil textFieldBottomLineAnimationWithConstraint:_textFieldBottomLineConstraint WithView:self.view];
    [HomePageAnimationUtil phoneImageWithImageView:_phoneIconImageView WithView:self.view];
    
    [HomePageAnimationUtil tipsLabelMaskAniamation:_topTipsLabel withBeginTime:0];
    [HomePageAnimationUtil tipsLabelMaskAniamation:_bottomTipsView withBeginTime:1];
    
    [HomePageAnimationUtil registerButtonAnimationWithButton:_registerBtn withView:self.view];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
