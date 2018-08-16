//
//  ViewController.h
//  Drawer
//
//  Created by Hassan Farooq on 1/24/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Social/Social.h"
#import "Accounts/Accounts.h"
#import "SettingsViewController.h"

@interface ViewController : UIViewController <SettingsViewControllerDelegate, UIActionSheetDelegate>
{
    SLComposeViewController *mySLComposerSheet;
    
    CGPoint lastPoint;
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat brush;
    CGFloat opacity;
    BOOL mouseSwiped;
}

@property (weak, nonatomic) IBOutlet UIImageView *mainImage;
@property (weak, nonatomic) IBOutlet UIImageView *tempDrawImage;

- (IBAction)pencilPressed:(id)sender;
- (IBAction)eraserPressed:(id)sender;
- (IBAction)reset:(id)sender;
- (IBAction)settings:(id)sender;
- (IBAction)save:(id)sender;

@end

