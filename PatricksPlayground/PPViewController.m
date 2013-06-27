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

@property (strong, nonatomic) PPColorRegulator *colorRegulator;

@end

@implementation PPViewController

- (void)viewDidAppear:(BOOL)animated
{
    self.colorRegulator = [[PPColorRegulator alloc] init];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    CGRect rectForButton1 = CGRectMake(15,  15, 90, 40);
    CGRect rectForButton2 = CGRectMake(115, 15, 90, 40);
    CGRect rectForButton3 = CGRectMake(215, 15, 90, 40);
    CGRect rectForButton4 = CGRectMake(15,  405, 90, 40);
    CGRect rectForButton5 = CGRectMake(115, 405, 90, 40);
    CGRect rectForButton6 = CGRectMake(215, 405, 90, 40);
    CGRect rectForButton7 = CGRectMake(60, 205, 200, 50);
    
    [button1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [button2 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [button3 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [button4 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [button5 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [button6 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [button7 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    
    button1.frame = rectForButton1;
    button2.frame = rectForButton2;
    button3.frame = rectForButton3;
    button4.frame = rectForButton4;
    button5.frame = rectForButton5;
    button6.frame = rectForButton6;
    button7.frame = rectForButton7;
    
    [button1 setTitle:@"+ red" forState:UIControlStateNormal];
    [button2 setTitle:@"+ green" forState:UIControlStateNormal];
    [button3 setTitle:@"+ blue" forState:UIControlStateNormal];
    [button4 setTitle:@"- red" forState:UIControlStateNormal];
    [button5 setTitle:@"- green" forState:UIControlStateNormal];
    [button6 setTitle:@"- blue" forState:UIControlStateNormal];
    [button7 setTitle:@"RESET" forState:UIControlStateNormal];

    [self.view addSubview:button1];
    [self.view addSubview:button2];
    [self.view addSubview:button3];
    [self.view addSubview:button4];
    [self.view addSubview:button5];
    [self.view addSubview:button6];
    [self.view addSubview:button7];
}

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed: %@", sender.titleLabel.text);
    
    if ([sender.titleLabel.text isEqualToString:@"RESET"]) {
        self.view.backgroundColor = [UIColor blackColor];
    }
    
    if ([sender.titleLabel.text isEqualToString:@"+ red"]) {
        self.view.backgroundColor = [self.colorRegulator colorWithMoreRed];
    } else if ([sender.titleLabel.text isEqualToString:@"+ green"]) {
        self.view.backgroundColor = [self.colorRegulator colorWithMoreGreen];
    } else if ([sender.titleLabel.text isEqualToString:@"+ blue"]) {
        self.view.backgroundColor = [self.colorRegulator colorWithMoreBlue];
    }    if ([sender.titleLabel.text isEqualToString:@"- red"]) {
        self.view.backgroundColor = [self.colorRegulator colorWithLessRed];
    } else if ([sender.titleLabel.text isEqualToString:@"- green"]) {
        self.view.backgroundColor = [self.colorRegulator colorWithLessGreen];
    } else if ([sender.titleLabel.text isEqualToString:@"- blue"]) {
        self.view.backgroundColor = [self.colorRegulator colorWithLessBlue];
    }
}

@end
