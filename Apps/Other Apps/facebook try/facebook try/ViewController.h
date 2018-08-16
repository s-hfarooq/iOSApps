//
//  ViewController.h
//  facebook try
//
//  Created by Hassan Farooq on 1/26/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Social/Social.h"
#import "Accounts/Accounts.h"

@interface ViewController : UIViewController
{
    SLComposeViewController *mySLComposerSheet;
}

-(IBAction)PostToFacebook:(id)sender;

@end
