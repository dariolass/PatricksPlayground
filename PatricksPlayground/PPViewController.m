//
//  PPViewController.m
//  PatricksPlayground
//
//  Created by Patrick Albrecht Magen on 27.06.13.
//  Copyright (c) 2013 Bytolution. All rights reserved.
//

#import "PPViewController.h"

@interface PPViewController ()

- (void)buttonPressed:(UIButton*)sender;
- (void)sliderValueChanged:(UISlider*)sender;
 
@property (nonatomic, copy) NSString *Label;
@property (nonatomic) float *value;

@property (strong, nonatomic) UISlider *sliderRed;
@property (strong, nonatomic) UISlider *sliderGreen;
@property (strong, nonatomic) UISlider *sliderBlue;

@property (strong, nonatomic) UIColor *sliderLabelTextColor;

@end

@implementation PPViewController

- (void)viewDidAppear:(BOOL)animated
{
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    CGRect rectForButton1 = CGRectMake(75, 400, 170, 40);
    
    [button1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    
    button1.frame = rectForButton1;
    
    [button1 setTitle:@"RESET" forState:UIControlStateNormal];
    [button1 setTitle:@"nigger works" forState:UIControlStateHighlighted];

    
    button1.titleLabel.font = [UIFont fontWithName:@"AvenirNext-UltraLight" size:28];
    
    [self.view addSubview:button1];
    
    
    self.sliderRed = [[UISlider alloc] init];
    self.sliderGreen = [[UISlider alloc] init];
    self.sliderBlue = [[UISlider alloc] init];
    
    UILabel *sliderLabelRed = [[UILabel alloc] init];
    UILabel *sliderLabelGreen = [[UILabel alloc] init];
    UILabel *sliderLabelBlue = [[UILabel alloc] init];
    
    CGRect rectForSliderRed = CGRectMake(15,  15, 90, 40);
    CGRect rectForSliderGreen = CGRectMake(115, 15, 90, 40);
    CGRect rectForSliderBlue = CGRectMake(215, 15, 90, 40);
    
    CGRect rectForsliderLabelRed = CGRectMake(20, 60, 60, 40);
    CGRect rectForsliderLabelGreen = CGRectMake(120, 60, 60, 40);
    CGRect rectForsliderLabelBlue = CGRectMake(220, 60, 60, 40);
    
    
    [self.sliderRed addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.sliderGreen addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.sliderBlue addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    self.sliderRed.frame = rectForSliderRed;
    self.sliderGreen.frame = rectForSliderGreen;
    self.sliderBlue.frame = rectForSliderBlue;
    
    sliderLabelRed.frame = rectForsliderLabelRed;
    sliderLabelGreen.frame = rectForsliderLabelGreen;
    sliderLabelBlue.frame = rectForsliderLabelBlue;

    [sliderLabelRed setText:@"red"];
    [sliderLabelGreen setText:@"green"];
    [sliderLabelBlue setText:@"blue"];
    
    [sliderLabelRed setBackgroundColor:[UIColor clearColor]];
    [sliderLabelGreen setBackgroundColor:[UIColor clearColor]];
    [sliderLabelBlue setBackgroundColor:[UIColor clearColor]];
    
    self.sliderLabelTextColor = [UIColor whiteColor];
    

    sliderLabelRed.font = [UIFont fontWithName:@"AvenirNext-UltraLight" size:22];
    sliderLabelGreen.font = [UIFont fontWithName:@"AvenirNext-UltraLight" size:22];
    sliderLabelBlue.font = [UIFont fontWithName:@"AvenirNext-UltraLight" size:22];

    [self.view addSubview:self.sliderRed];
    [self.view addSubview:self.sliderGreen];
    [self.view addSubview:self.sliderBlue];
    
    [self.view addSubview:sliderLabelRed];
    [self.view addSubview:sliderLabelGreen];
    [self.view addSubview:sliderLabelBlue];
}

-(void)buttonPressed:(UIButton *)sender
{
    NSLog(@"reset");
    
    self.sliderRed.value = 0;
    self.sliderGreen.value = 0;
    self.sliderBlue.value = 0;
    self.view.backgroundColor = [UIColor colorWithRed:self.sliderRed.value green:self.sliderGreen.value blue:self.sliderBlue.value alpha:1];}

- (void)sliderValueChanged:(UISlider *)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    self.view.backgroundColor = [UIColor colorWithRed:self.sliderRed.value green:self.sliderGreen.value blue:self.sliderBlue.value alpha:1];
}

@end
