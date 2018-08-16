//
//  ViewController.h
//  facebook pic try
//
//  Created by Hassan Farooq on 3/8/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>

@interface ViewController : UIViewController
{
    SLComposeViewController *slComposeViewController;
    UIImage *image;
}

-(IBAction)shareFB;

@end
