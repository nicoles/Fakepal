//
//  FakepalAppDelegate.m
//  Fakepal
//
//  Created by Nicole Aptekar on 11/03/29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FakepalAppDelegate.h"
#import "HomeViewController.h"
#import "SendMoneyController.h"
#import "RequestMoneyController.h"

@implementation FakepalAppDelegate


@synthesize window=_window;

@synthesize tabBarController=_tabBarController;
@synthesize homeViewController=_homeViewController;
@synthesize sendMoneyController=_sendMoneyController;
@synthesize requestMoneyController=_requestMoneyController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _tabBarController = [[UITabBarController alloc] init];
    _homeViewController = [[HomeViewController alloc] init];
    _sendMoneyController = [[SendMoneyController alloc] init];
    _requestMoneyController = [[RequestMoneyController alloc] init];
    _tabBarController.viewControllers = [NSArray arrayWithObjects:_homeViewController, _sendMoneyController, _requestMoneyController, nil];
    [_window addSubview:_tabBarController.view];
    // Override point for customization after application launch.
    // Add the tab bar controller's current view as a subview of the window

    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_tabBarController release];
    [super dealloc];
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
