//
//  PPAppDelegate.m
//  PatricksPlayground
//
//  Created by Dario Lass on 31.03.13.
//  Copyright (c) 2013 Bytolution. All rights reserved.
//

#import "PPAppDelegate.h"

@implementation PPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Snap crackle paop
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
