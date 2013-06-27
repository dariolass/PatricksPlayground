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
    
    CGRect rectForButton1 = CGRectMake(15,  15, 90, 40);
    CGRect rectForButton2 = CGRectMake(115, 15, 90, 40);
    CGRect rectForButton3 = CGRectMake(215, 15, 90, 40);
    
    [button1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [button2 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [button3 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    
    button1.frame = rectForButton1;
    button2.frame = rectForButton2;
    button3.frame = rectForButton3;
    
    [button1 setTitle:@"red" forState:UIControlStateNormal];
    [button2 setTitle:@"green" forState:UIControlStateNormal];
    [button3 setTitle:@"blue" forState:UIControlStateNormal];
    
    [self.view addSubview:button1];
    [self.view addSubview:button2];
    [self.view addSubview:button3];
}

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed: %@", sender.titleLabel.text);
    
    if ([sender.titleLabel.text isEqualToString:@"black"]) {
        self.view.backgroundColor = [UIColor blackColor];
    } else if ([sender.titleLabel.text isEqualToString:@"gray"]) {
        self.view.backgroundColor = [UIColor grayColor];
    } else if ([sender.titleLabel.text isEqualToString:@"white"]) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    if ([sender.titleLabel.text isEqualToString:@"red"]) {
        self.view.backgroundColor = [self.colorRegulator colorWithMoreRed];
    } else if ([sender.titleLabel.text isEqualToString:@"green"]) {
        self.view.backgroundColor = [self.colorRegulator colorWithMoreGreen];
    } else if ([sender.titleLabel.text isEqualToString:@"blue"]) {
        self.view.backgroundColor = [self.colorRegulator colorWithMoreBlue];
    }
}

@end
