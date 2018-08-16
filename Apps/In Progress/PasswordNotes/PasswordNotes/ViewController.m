//
//  ViewController.m
//  PasswordNotes
//
//  Created by Hassan Farooq on 3/14/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    newPassword.delegate = self;
    enterPasswordField.delegate = self;
    
    getToNotes.hidden = YES;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [newPassword resignFirstResponder];
    [enterPasswordField resignFirstResponder];
    return YES;
}

-(IBAction)Save
{
    //string = [NSString stringWithFormat:@"%d", password];

    password = [newPassword.text intValue];
    
    [[NSUserDefaults standardUserDefaults] setInteger:password forKey:@"password"];
}

-(IBAction)enterPassword
{
    password = [[NSUserDefaults standardUserDefaults] integerForKey:@"password"];
    enterdpassword = [enterPasswordField.text intValue];
    //NSString *passwordString = [NSString stringWithFormat:@"%d",password];
    
    if (enterdpassword == password)
    {
        getToNotes.hidden = NO;
        newPassword.hidden = YES;
        newPasswordButton.hidden = YES;
        enterPasswordField.hidden = YES;
        passwordFieldButton.hidden = YES;
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Incorrect Password" message:@"This password is incorret" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
