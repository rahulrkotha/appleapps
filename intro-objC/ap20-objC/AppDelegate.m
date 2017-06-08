//
//  AppDelegate.m
//  ap20-objC
//
//  Created by Rahul R Kotha on 4/20/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate () 

@end

@implementation AppDelegate

-(BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIViewController *vc = [[UIViewController alloc] init];
    
    
    
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
