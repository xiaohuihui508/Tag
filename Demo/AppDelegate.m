//
//  AppDelegate.m
//  Demo
//
//  Created by 程辉 on 2019/6/25.
//  Copyright © 2019 CY. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    [self setRootTab];
    
    
    return YES;
}


#pragma mark - private
- (void)setRootTab
{
    //初始化分栏控制器
    NSArray *rootViewControllers = @[@"RootTableViewController"];
    
    NSDictionary *config = @{kWWBaseTabBarControllerRootKey:rootViewControllers};
    WWBaseTabBarController *tabBarController = [[WWBaseTabBarController alloc] initWithConfig:config];
    
    self.window.rootViewController = tabBarController;
}


@end
