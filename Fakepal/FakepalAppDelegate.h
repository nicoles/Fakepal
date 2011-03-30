//
//  FakepalAppDelegate.h
//  Fakepal
//
//  Created by Nicole Aptekar on 11/03/29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HomeViewController;
@class SendMoneyController;
@class RequestMoneyController;

@interface FakepalAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@property (nonatomic, retain) HomeViewController *homeViewController;
@property (nonatomic, retain) SendMoneyController *sendMoneyController;
@property (nonatomic, retain) RequestMoneyController *requestMoneyController;
@end
