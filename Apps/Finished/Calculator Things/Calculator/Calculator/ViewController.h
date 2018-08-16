//
//  ViewController.h
//  Calculator
//
//  Created by Hassan Farooq on 1/2/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    float result;
    
    IBOutlet UILabel *calculatorScreen;
    int currentOperation;
    float currentNumber;
}

-(IBAction)buttonDigitPressed:(id)sender;
-(IBAction)buttonOperationPressed:(id)sender;
-(IBAction)cancelInput;
-(IBAction)cancelOperation;

@end
