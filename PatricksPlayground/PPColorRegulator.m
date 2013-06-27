//
//  PPColorRegulator.m
//  PatricksPlayground
//
//  Created by Patrick Albrecht Magen on 27.06.13.
//  Copyright (c) 2013 Bytolution. All rights reserved.
//

#import "PPColorRegulator.h"

@interface PPColorRegulator ()

@property (nonatomic) float valueRed;
@property (nonatomic) float valueGreen;
@property (nonatomic) float valueBlue;

@end

@implementation PPColorRegulator

- (UIColor*)colorWithMoreRed
{
    self.valueRed = self.valueRed + 0.1;
    UIColor *theColor = [UIColor colorWithRed:self.valueRed green:self.valueGreen blue:self.valueBlue alpha:1];
    return theColor;
}

- (UIColor*)colorWithMoreGreen
{
    self.valueGreen = self.valueGreen + 0.1;
    UIColor *theColor = [UIColor colorWithRed:self.valueRed green:self.valueGreen blue:self.valueBlue alpha:1];
    return theColor;
}

- (UIColor*)colorWithMoreBlue
{
    self.valueBlue = self.valueBlue + 0.1;
    UIColor *theColor = [UIColor colorWithRed:self.valueRed green:self.valueGreen blue:self.valueBlue alpha:1];
    return theColor;
}

@end
