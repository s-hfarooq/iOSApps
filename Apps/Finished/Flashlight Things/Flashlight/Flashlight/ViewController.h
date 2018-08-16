//
//  ViewController.h
//  Flashlight
//
//  Created by Hassan Farooq on 1/1/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
    UIButton *On;
    UIButton *Off;

    UIImageView *offView;
}
@property(nonatomic, strong) IBOutlet UIButton *On;
@property(nonatomic, strong) IBOutlet UIButton *Off;
@property(nonatomic, strong) IBOutlet UIImageView *onView;
@property(nonatomic, strong) IBOutlet UIImageView *offView;

-(IBAction)torchOn:(id)sender;
-(IBAction)torchOff:(id)sender;

@end
