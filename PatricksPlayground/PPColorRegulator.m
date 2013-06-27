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
    if (self.valueRed < 1){
        self.valueRed = self.valueRed + 0.1;
    }
    UIColor *theColor = [UIColor colorWithRed:self.valueRed green:self.valueGreen blue:self.valueBlue alpha:1];
    return theColor;
}

- (UIColor*)colorWithMoreGreen
{
    if (self.valueGreen < 1){
        self.valueGreen = self.valueGreen + 0.1;
    }
    UIColor *theColor = [UIColor colorWithRed:self.valueRed green:self.valueGreen blue:self.valueBlue alpha:1];
    return theColor;
}

- (UIColor*)colorWithMoreBlue
{
    if (self.valueBlue < 1){
        self.valueBlue = self.valueBlue + 0.1;
    }
    UIColor *theColor = [UIColor colorWithRed:self.valueRed green:self.valueGreen blue:self.valueBlue alpha:1];
    return theColor;
}

- (UIColor*)colorWithLessRed
{
    if (self.valueBlue > 0){
    self.valueRed = self.valueRed - 0.1;
}
    UIColor *theColor = [UIColor colorWithRed:self.valueRed green:self.valueGreen blue:self.valueBlue alpha:1];
    return theColor;
}

- (UIColor*)colorWithLessGreen
{
    if (self.valueBlue > 0){
        self.valueGreen = self.valueGreen - 0.1;
    }
    UIColor *theColor = [UIColor colorWithRed:self.valueRed green:self.valueGreen blue:self.valueBlue alpha:1];
    return theColor;
}

- (UIColor*)colorWithLessBlue
{
    if (self.valueBlue > 0){
        self.valueBlue = self.valueBlue - 0.1;
    }
        UIColor *theColor = [UIColor colorWithRed:self.valueRed green:self.valueGreen blue:self.valueBlue alpha:1];
    return theColor;
}

- (UIColor*)resetColor
{
    self.valueRed = 0;
    self.valueGreen = 0;
    self.valueBlue = 0;
    
    UIColor *theColor = [UIColor colorWithRed:self.valueRed green:self.valueGreen blue:self.valueBlue alpha:1];
    return theColor;
}

@end
