//
//  ViewController.m
//  Tip Calculator
//
//  Created by Hassan Farooq on 4/6/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize totalAmount = _totalAmount;
@synthesize tipPercentage = _tipPercentage;
@synthesize taxPercentage = _taxPercentage;

- (void)viewDidLoad
{
    Screen.hidden = NO;
    tipLabel3.hidden = YES;
    tipLabel2.hidden = YES;
    tipLabel1.hidden = YES;
    tip.hidden = YES;
    calculateTip.hidden = YES;
    _tipPercentage.hidden = YES;
    _totalAmount.hidden = YES;
    all.hidden = YES;
    tipLabel4.hidden = YES;
    _taxPercentage.hidden = YES;
    tipLabel5.hidden = YES;
    tipLabel6.hidden = YES;
    allAndTax.hidden = YES;
    
    [super viewDidLoad];
    
    _totalAmount.delegate = self;
    _tipPercentage.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_totalAmount resignFirstResponder];
    [_tipPercentage resignFirstResponder];
    [_taxPercentage resignFirstResponder];
}

-(IBAction)calculate:(id)sender
{
    bill = [_totalAmount.text intValue];
    percentage = [_tipPercentage.text intValue];
    tipamount = bill * (0.01 * percentage);
    NSString *string = [NSString stringWithFormat:@"%.2f",tipamount];
    tip.text = string;
    totalAmount = tipamount + bill;
    NSString *string2 = [NSString stringWithFormat:@"%.2f", totalAmount];
    all.text = string2;
    tax = [_taxPercentage.text intValue];
    billTax = 0.01 * bill * tax;
    totalWithTax = billTax + tipamount + bill;
    NSString *string3 = [NSString stringWithFormat:@"%.2f", totalWithTax];
    allAndTax.text = string3;
}

-(IBAction)CalculatorTip:(id)sender
{
    Screen.hidden = YES;
    tipLabel3.hidden = NO;
    tipLabel2.hidden = NO;
    tipLabel1.hidden = NO;
    tip.hidden = NO;
    calculateTip.hidden = NO;
    _tipPercentage.hidden = NO;
    _totalAmount.hidden = NO;
    all.hidden = NO;
    tipLabel4.hidden = NO;
    _taxPercentage.hidden = NO;
    tipLabel5.hidden = NO;
    tipLabel6.hidden = NO;
    allAndTax.hidden = NO;

    buttonAC.hidden = YES;
    button0.hidden = YES;
    button1.hidden = YES;
    button2.hidden = YES;
    button3.hidden = YES;
    button4.hidden = YES;
    button5.hidden = YES;
    button6.hidden = YES;
    button7.hidden = YES;
    button8.hidden = YES;
    button9.hidden = YES;
    buttonDivide.hidden = YES;
    buttonX.hidden = YES;
    buttonMinus.hidden = YES;
    buttonPlus.hidden = YES;
    buttonEqual.hidden = YES;

}

-(IBAction)CalculatorBasic:(id)sender
{
    Screen.hidden = NO;
    tipLabel3.hidden = YES;
    tipLabel2.hidden = YES;
    tipLabel1.hidden = YES;
    tip.hidden = YES;
    calculateTip.hidden = YES;
    _tipPercentage.hidden = YES;
    _totalAmount.hidden = YES;
    all.hidden = YES;
    tipLabel4.hidden = YES;
    _taxPercentage.hidden = YES;
    tipLabel5.hidden = YES;
    tipLabel6.hidden = YES;
    allAndTax.hidden = YES;
    
    buttonAC.hidden = NO;
    button0.hidden = NO;
    button1.hidden = NO;
    button2.hidden = NO;
    button3.hidden = NO;
    button4.hidden = NO;
    button5.hidden = NO;
    button6.hidden = NO;
    button7.hidden = NO;
    button8.hidden = NO;
    button9.hidden = NO;
    buttonDivide.hidden = NO;
    buttonX.hidden = NO;
    buttonMinus.hidden = NO;
    buttonPlus.hidden = NO;
    buttonEqual.hidden = NO;
}

-(void)numberLogic
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + number;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number1:(id)sender
{
    number = 1;
    [self numberLogic];
}

-(IBAction)Number2:(id)sender
{
    number = 2;
    [self numberLogic];
}

-(IBAction)Number3:(id)sender
{
    number = 3;
    [self numberLogic];
}

-(IBAction)Number4:(id)sender
{
    number = 4;
    [self numberLogic];
}

-(IBAction)Number5:(id)sender
{
    number = 5;
    [self numberLogic];
}

-(IBAction)Number6:(id)sender
{
    number = 6;
    [self numberLogic];
}

-(IBAction)Number7:(id)sender
{
    number = 7;
    [self numberLogic];
}

-(IBAction)Number8:(id)sender
{
    number = 8;
    [self numberLogic];
}

-(IBAction)Number9:(id)sender
{
    number = 9;
    [self numberLogic];
}

-(IBAction)Number0:(id)sender
{
    number = 0;
    [self numberLogic];
}

-(IBAction)Times:(id)sender
{
    [self logic];
    method = 1;
    SelectNumber = 0;
}

-(IBAction)Divide:(id)sender
{
    [self logic];
    method = 2;
    SelectNumber = 0;
}

-(IBAction)Subtract:(id)sender
{
    [self logic];
    method = 3;
    SelectNumber = 0;
}

-(IBAction)Plus:(id)sender
{
    [self logic];
    method = 4;
    SelectNumber = 0;
}

-(IBAction)Equals:(id)sender
{
    [self logic];
    method = 0;
    SelectNumber = 0;
    Screen.text = [NSString stringWithFormat:@"%.4f", RunningTotal];
}

-(IBAction)AllClear:(id)sender
{
    method = 0;
    RunningTotal = 0;
    SelectNumber = 0;
    
    Screen.text = [NSString stringWithFormat:@"0"];
}

-(void)logic
{
    if (RunningTotal == 0)
    {
        RunningTotal = SelectNumber;
    }
    else
    {
        switch (method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
