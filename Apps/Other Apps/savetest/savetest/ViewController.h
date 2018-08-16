//
//  ViewController.h
//  savetest
//
//  Created by Hassan Farooq on 3/14/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *label;
    int integer1;
}

-(IBAction)Change;
-(IBAction)Save;
-(IBAction)Load;

@end
