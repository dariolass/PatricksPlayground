//
//  PPViewController.m
//  PatricksPlayground
//
//  Created by Patrick Albrecht Magen on 27.06.13.
//  Copyright (c) 2013 Bytolution. All rights reserved.
//

#import "PPViewController.h"
#import "PPColorRegulator.h"

@interface PPViewController ()

- (void)buttonPressed:(UIButton*)sender;
- (void)sliderValueChanged:(UISlider*)sender;
 
@property (strong, nonatomic) PPColorRegulator *colorRegulator;
@property (nonatomic, copy) NSString *Label;
@property (nonatomic) float *value;

@end

@implementation PPViewController

- (void)viewDidAppear:(BOOL)animated
{
    self.colorRegulator = [[PPColorRegulator alloc] init];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    CGRect rectForButton1 = CGRectMake(60, 205, 200, 50);
    
    [button1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    
    button1.frame = rectForButton1;
    
    [button1 setTitle:@"RESET" forState:UIControlStateNormal];
    
    [self.view addSubview:button1];
    
    
    UISlider *slider1 = [[UISlider alloc] init];
    UISlider *slider2 = [[UISlider alloc] init];
    UISlider *slider3 = [[UISlider alloc] init];
    
    UILabel *sliderLabel1 = [[UILabel alloc] init];
    UILabel *sliderLabel2 = [[UILabel alloc] init];
    UILabel *sliderLabel3 = [[UILabel alloc] init];
    
    CGRect rectForSlider1 = CGRectMake(15,  15, 90, 40);
    CGRect rectForSlider2 = CGRectMake(115, 15, 90, 40);
    CGRect rectForSlider3 = CGRectMake(215, 15, 90, 40);
    
    CGRect rectForsliderLabel1 = CGRectMake(20, 60, 60, 30);
    CGRect rectForsliderLabel2 = CGRectMake(120, 60, 60, 30);
    CGRect rectForsliderLabel3 = CGRectMake(220, 60, 60, 30);
    
    
    [slider1 addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [slider2 addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [slider3 addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    slider1.frame = rectForSlider1;
    slider2.frame = rectForSlider2;
    slider3.frame = rectForSlider3;
    
    sliderLabel1.frame = rectForsliderLabel1;
    sliderLabel2.frame = rectForsliderLabel2;
    sliderLabel3.frame = rectForsliderLabel3;

    [sliderLabel1 setText:@"red"];
    [sliderLabel2 setText:@"green"];
    [sliderLabel3 setText:@"blue"];
    
    [self.view addSubview:slider1];
    [self.view addSubview:slider2];
    [self.view addSubview:slider3];
    
    [self.view addSubview:sliderLabel1];
    [self.view addSubview:sliderLabel2];
    [self.view addSubview:sliderLabel3];
}

-(void)buttonPressed:(UIButton *)sender
{
    NSLog(@"reset");
    
    if ([sender.titleLabel.text isEqualToString:@"RESET"]) {
        self.view.backgroundColor = [self.colorRegulator resetColor];
    }
}

- (void)sliderValueChanged:(UISlider *)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

@end
