//
//  AppDelegate.m
//  NewTour
//
//  Created by lincy on 15/5/15.
//  Copyright (c) 2015年 lincy. All rights reserved.
//

#import "AppDelegate.h"
#import "GGTabBarController.h"
#import "NTExploreNavController.h"
#import "NTDestinationNavController.h"
#import "NTMeNavController.h"
#import "NTSaleNavController.h"
#import "NTNewTripNavController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    GGTabBarController *tabBar = [[GGTabBarController alloc] init];
    
    //推荐
    UIStoryboard *storyboardExplore = [UIStoryboard storyboardWithName:@"NTExplore" bundle:nil];
    NTExploreNavController *exploreNavController = (NTExploreNavController *)[storyboardExplore instantiateViewControllerWithIdentifier:@"NTExplore"];
    exploreNavController.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil
                                                    image:[UIImage imageNamed:@"tabbar_explore"]
                                            selectedImage:[UIImage imageNamed:@"tabbar_explore_hl"]];
    
    //目的地
    UIStoryboard *storyboardDest = [UIStoryboard storyboardWithName:@"NTDestination" bundle:nil];
    NTDestinationNavController *destinationNavController = (NTDestinationNavController *)[storyboardDest instantiateViewControllerWithIdentifier:@"NTDestination"];
    destinationNavController.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil
                                                    image:[UIImage imageNamed:@"tabbar_dest"]
                                            selectedImage:[UIImage imageNamed:@"tabbar_dest_hl"]];
    
    //新旅程
    UIStoryboard *storyboardNewTrip = [UIStoryboard storyboardWithName:@"NTNewTrip" bundle:nil];
    NTNewTripNavController *newTripNavController = (NTNewTripNavController *)[storyboardNewTrip instantiateViewControllerWithIdentifier:@"NTNewTrip"];
    newTripNavController.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil
                                                    image:[UIImage imageNamed:@"tabbar_newtrip"]
                                            selectedImage:[UIImage imageNamed:@"tabbar_newtrip_hl"]];
    
    //特价
    UIStoryboard *storyboardSale = [UIStoryboard storyboardWithName:@"NTSale" bundle:nil];
    NTSaleNavController *saleNavController = (NTSaleNavController *)[storyboardSale instantiateViewControllerWithIdentifier:@"NTSale"];
    saleNavController.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil
                                            image:[UIImage imageNamed:@"tabbar_offline"]
                                    selectedImage:[UIImage imageNamed:@"tabbar_offline_hl"]];
    
    
    //我
    UIStoryboard *storyboardMe = [UIStoryboard storyboardWithName:@"NTMe" bundle:nil];
    NTMeNavController *meNavController = (NTMeNavController *)[storyboardMe instantiateViewControllerWithIdentifier:@"NTMe"];
    meNavController.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil
                                                    image:[UIImage imageNamed:@"tabbar_me"]
                                            selectedImage:[UIImage imageNamed:@"tabbar_me_hl"]];
    
    tabBar.viewControllers = @[exploreNavController, destinationNavController, newTripNavController, meNavController, saleNavController ];
    
    self.window.rootViewController = tabBar;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
