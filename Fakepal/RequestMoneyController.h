//
//  RequestMoneyController.h
//  Fakepal
//
//  Created by Nicole Aptekar on 11/03/30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RequestMoneyController : UIViewController {
    UITextField *email;
    UITextField *amount;
    UITextField *comment;
}

@property (nonatomic, retain) UITextField *email;
@property (nonatomic, retain) UITextField *amount;
@property (nonatomic, retain) UITextField *comment;

- (void)requestMoney;

@end
