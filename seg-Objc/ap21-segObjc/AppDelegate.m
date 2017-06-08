//
//  AppDelegate.m
//  ap21-segObjc
//
//  Created by Rahul R Kotha on 4/21/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds ]];
    
    ViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end
