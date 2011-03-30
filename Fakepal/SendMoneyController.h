//
//  SendMoneyController.h
//  Fakepal
//
//  Created by Nicole Aptekar on 11/03/29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SendMoneyController : UIViewController <UITextFieldDelegate> {
    UITextField *email;
    UITextField *amount;
    UITextField *comment;

}

@property (nonatomic, retain) IBOutlet UITextField *email;
@property (nonatomic, retain) IBOutlet UITextField *amount;
@property (nonatomic, retain) IBOutlet UITextField *comment;

- (IBAction)sendMoney;

@end
