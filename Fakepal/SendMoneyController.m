//
//  SendMoneyController.m
//  Fakepal
//
//  Created by Nicole Aptekar on 11/03/29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SendMoneyController.h"
#import "ASIFormDataRequest.h"

@implementation SendMoneyController

@synthesize email;
@synthesize amount;
@synthesize comment;



- (id)init{
    if ((self = [super init])) {
        self.title = @"Send...";
        self.tabBarItem.image = [UIImage imageNamed:@"08-chat.png"];
    }
    return self;
}


 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad{
    email = [[UITextField alloc] initWithFrame:CGRectMake(20, 30, 280, 30)];
             [email setPlaceholder:@"email"];
             email.delegate = self;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 500)];
    [view addSubview:email];
    [super viewDidLoad];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
	if (theTextField == email || amount || comment) {
		[email resignFirstResponder];
		[amount resignFirstResponder];
        [comment resignFirstResponder];
	}
	
	return YES;
}

- (IBAction)sendMoney{
    ASIFormDataRequest* request = [ASIFormDataRequest requestWithURL:[NSURL URLWithString:@"http://web.site.string/"]];
    [request addRequestHeader:@"Device-UID" value:[[UIDevice currentDevice] uniqueIdentifier]];
    [request setPostValue:self.email.text forKey:@"email"];
    [request setPostValue:self.amount.text forKey:@"amount"];
    [request setPostValue:self.comment.text forKey:@"comment"];
    [request setDelegate:self];
    [request startAsynchronous];
}
   
- (void)requestFinished:(ASIHTTPRequest *)request {
    NSLog(@"request: %@", request);
	UIAlertView *alert;
	
	
	alert = [[UIAlertView alloc] initWithTitle:@"Checkpoint!" 
                                       message:@"We've sent them off a confirmation notice!" 
                                      delegate:self cancelButtonTitle:@"Ok" 
                             otherButtonTitles:nil];
	[alert show];
	[alert release];
    
}

- (void)requestFailed:(ASIHTTPRequest *)request {
    NSError *error = [request error];
    NSLog(@"%@", [error localizedDescription]);
    UIAlertView *alert;
	
	
	alert = [[UIAlertView alloc] initWithTitle:@"Boo!" 
                                       message:@"Seems like something went wonky. Try again?" 
                                      delegate:self cancelButtonTitle:@"Ok" 
                             otherButtonTitles:nil];
	[alert show];
	[alert release];
    
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload
{
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [super dealloc];
    [email release];
    [amount release];
    [comment release];
}

@end
