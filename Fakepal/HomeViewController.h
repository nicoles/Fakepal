//
//  HomeViewController.h
//  Fakepal
//
//  Created by Nicole Aptekar on 11/03/29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <dispatch/dispatch.h>

@interface HomeViewController : UIViewController {
    dispatch_queue_t loadingQueue;

}

@end
