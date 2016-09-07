//
//  AppDelegate.m
//  TippingCalculator
//
//  Created by Bernard Desert on 08/23/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "AppDelegate.h"
#import "TipCalculatorViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] init];
    
    TipCalculatorViewController *viewController = [[TipCalculatorViewController alloc] init];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];

    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
