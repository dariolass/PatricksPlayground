//
//  PPAppDelegate.m
//  PatricksPlayground
//
//  Created by Dario Lass on 31.03.13.
//  Copyright (c) 2013 Bytolution. All rights reserved.
//

#import "PPAppDelegate.h"
#import "PPViewController.h"

@implementation PPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    PPViewController *viewController = [[PPViewController alloc] init];
    self.window.rootViewController = viewController;
    self.window.backgroundColor = [UIColor blackColor];
    [self.window makeKeyAndVisible];
    return YES;
}



@end