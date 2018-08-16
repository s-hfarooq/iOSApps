//
//  ViewController.h
//  PasswordNotes
//
//  Created by Hassan Farooq on 3/14/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *newPassword;
    IBOutlet UIButton *newPasswordButton;
    IBOutlet UITextField *enterPasswordField;
    IBOutlet UIButton *passwordFieldButton;
    
    IBOutlet UIButton *getToNotes;
    
    int password;
    int enterdpassword;
    NSString *string;
}

-(IBAction)Save;
-(IBAction)enterPassword;

@end
