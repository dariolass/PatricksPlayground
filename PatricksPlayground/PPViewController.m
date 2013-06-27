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

@end

@implementation PPViewController

- (void)viewDidAppear:(BOOL)animated
{
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    CGRect rectForButton1 = CGRectMake(60,  100, 200, 50);
    CGRect rectForButton2 = CGRectMake(60, 200, 200, 50);
    CGRect rectForButton3 = CGRectMake(60, 300, 200, 50);
    
    [button1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [button2 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    [button3 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchDown];
    
    button1.frame = rectForButton1;
    button2.frame = rectForButton2;
    button3.frame = rectForButton3;
    
    [button1 setTitle:@"black" forState:UIControlStateNormal];
    [button2 setTitle:@"gray" forState:UIControlStateNormal];
    [button3 setTitle:@"white" forState:UIControlStateNormal];
    
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
}

@end
