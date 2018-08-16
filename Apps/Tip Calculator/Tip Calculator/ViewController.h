//
//  ViewController.h
//  Tip Calculator
//
//  Created by Hassan Farooq on 4/6/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>

float tipamount;
float bill;
float percentage;

int number;
float totalWithTax;

float totalAmount;
float billTax;
float tax;

int method;
int SelectNumber;
float RunningTotal;

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UIButton *calculateTip;
    IBOutlet UILabel *tip;
    IBOutlet UILabel *all;
    IBOutlet UILabel *allAndTax;
    IBOutlet UILabel *tipLabel1;
    IBOutlet UILabel *tipLabel2;
    IBOutlet UILabel *tipLabel3;
    IBOutlet UILabel *tipLabel4;
    IBOutlet UILabel *tipLabel5;
    IBOutlet UILabel *tipLabel6;
    
    IBOutlet UIButton *buttonAC;
    IBOutlet UIButton *button0;
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button3;
    IBOutlet UIButton *button4;
    IBOutlet UIButton *button5;
    IBOutlet UIButton *button6;
    IBOutlet UIButton *button7;
    IBOutlet UIButton *button8;
    IBOutlet UIButton *button9;
    IBOutlet UIButton *buttonDivide;
    IBOutlet UIButton *buttonX;
    IBOutlet UIButton *buttonMinus;
    IBOutlet UIButton *buttonPlus;
    IBOutlet UIButton *buttonEqual;
    
    IBOutlet UILabel *Screen;
}

@property (strong, nonatomic) IBOutlet UITextField *totalAmount;
@property (strong, nonatomic) IBOutlet UITextField *tipPercentage;
@property (strong, nonatomic) IBOutlet UITextField *taxPercentage;

-(IBAction)Number1:(id)sender;
-(IBAction)Number2:(id)sender;
-(IBAction)Number3:(id)sender;
-(IBAction)Number4:(id)sender;
-(IBAction)Number5:(id)sender;
-(IBAction)Number6:(id)sender;
-(IBAction)Number7:(id)sender;
-(IBAction)Number8:(id)sender;
-(IBAction)Number9:(id)sender;
-(IBAction)Number0:(id)sender;
-(IBAction)Times:(id)sender;
-(IBAction)Divide:(id)sender;
-(IBAction)Subtract:(id)sender;
-(IBAction)Plus:(id)sender;
-(IBAction)Equals:(id)sender;
-(IBAction)AllClear:(id)sender;

@end