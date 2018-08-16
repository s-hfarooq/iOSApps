//
//  ViewController.m
//  Algebra Practice
//
//  Created by Hassan Farooq on 2/2/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
// SOLVE FOR X
//


#import "ViewController.h"

@interface ViewController ()

- (IBAction)topLeft:(id)sender;
- (IBAction)topRight:(id)sender;
- (IBAction)bottomLeft:(id)sender;
- (IBAction)bottomRight:(id)sender;

- (IBAction)newQuestion:(id)sender;

- (IBAction)tryAgain:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    /*if ([[UIScreen mainScreen]bounds].size.height == 480)
    {
        topLeftButton.center = CGPointMake(50, 50);
        topRightButton.center = CGPointMake(430, 50);
        bottomLeftButton.center = CGPointMake(50, 270);
        bottomRightButton.center = CGPointMake(430, 270);
        
        topLeftLabel.center = CGPointMake(50, 48.5);
        topRightLabel.center = CGPointMake(430, 48.5);
        bottomLeftLabel.center = CGPointMake(50, 268.5);
        bottomRightLabel.center = CGPointMake(430, 268.5);
        
        topMiddleLabel.center = CGPointMake(240, 34.5);
        question.center = CGPointMake(240, 160.5);
        
        wrong.center = CGPointMake(240, 117);
        right.center = CGPointMake(240.5, 127);
        tryAgain.center = CGPointMake(241, 187);
        nextLevel.center = CGPointMake(240, 194);
        mainMenu.center = CGPointMake(240.5, 238.5);
    }*/
    
    [self new];
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
}

-(void)new
{
    [self start];
    [super viewDidLoad];
}

-(void)start
{
    A = arc4random()%9+1;
    B = arc4random()%49+1;
    C = arc4random()%59+1;
    D = (1.0*(C - B)) / A;
    E = D - (arc4random()%5) - 1;
    F = D - (arc4random()%5) - 7;
    G = D + (arc4random()%5) + 1;
    
    NSString *incorrect1 = [NSString stringWithFormat:@"%3.2f",E];
    NSString *incorrect2 = [NSString stringWithFormat:@"%3.2f",F];
    NSString *incorrect3 = [NSString stringWithFormat:@"%3.2f",G];
    NSString *correct = [NSString stringWithFormat:@"%3.2f",D];
    NSString *questionString = [NSString stringWithFormat:@"%dX+%d=%d",A, B, C];
    
    buttonInt = arc4random()%4;
    if (buttonInt == 1)
    {
        question.text = questionString;
        bottomRightLabel.text = incorrect1;
        bottomLeftLabel.text = incorrect2;
        topRightLabel.text = incorrect3;
        topLeftLabel.text = correct;
        
    }
    else if (buttonInt == 2)
    {
        question.text = questionString;
        bottomRightLabel.text = incorrect1;
        bottomLeftLabel.text = incorrect2;
        topRightLabel.text = correct;
        topLeftLabel.text = incorrect3;
    }
    else if (buttonInt == 3)
    {
        question.text = questionString;
        bottomRightLabel.text = incorrect1;
        bottomLeftLabel.text = correct;
        topRightLabel.text = incorrect3;
        topLeftLabel.text = incorrect2;
    }
    else
    {
        question.text = questionString;
        bottomRightLabel.text = correct;
        bottomLeftLabel.text = incorrect2;
        topRightLabel.text = incorrect3;
        topLeftLabel.text = incorrect1;
    }
    
    [self disableAll];
    
    topLeftButton.hidden = NO;
    topRightButton.hidden = NO;
    bottomLeftButton.hidden = NO;
    bottomRightButton.hidden = NO;
    topLeftLabel.hidden = NO;
    topRightLabel.hidden = NO;
    bottomLeftLabel.hidden = NO;
    bottomRightLabel.hidden = NO;
    topMiddleLabel.hidden = NO;
    question.hidden = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tryAgain:(id)sender
{
    [self disableAll];
    
    topLeftButton.hidden = NO;
    topRightButton.hidden = NO;
    bottomLeftButton.hidden = NO;
    bottomRightButton.hidden = NO;
    topLeftLabel.hidden = NO;
    topRightLabel.hidden = NO;
    bottomLeftLabel.hidden = NO;
    bottomRightLabel.hidden = NO;
    topMiddleLabel.hidden = NO;
    question.hidden = NO;
}

- (void)disableAll
{
    topLeftButton.hidden = YES;
    topRightButton.hidden = YES;
    bottomLeftButton.hidden = YES;
    bottomRightButton.hidden = YES;
    topLeftLabel.hidden = YES;
    topRightLabel.hidden = YES;
    bottomLeftLabel.hidden = YES;
    bottomRightLabel.hidden = YES;
    topMiddleLabel.hidden = YES;
    question.hidden = YES;
    wrong.hidden = YES;
    right.hidden = YES;
    tryAgain.hidden = YES;
    nextLevel.hidden = YES;
    mainMenu.hidden = YES;
}

- (IBAction)topLeft:(id)sender
{
    [self disableAll];
    
    if (buttonInt == 1)
    {
        [self correct];
    }
    else
    {
        [self incorrect];
    }
}

-(IBAction)topRight:(id)sender
{
    [self disableAll];
    
    if (buttonInt == 2)
    {
        [self correct];
    }
    else
    {
        [self incorrect];
    }
}

- (IBAction)bottomLeft:(id)sender
{
    [self disableAll];
    
    if (buttonInt == 3)
    {
        [self correct];
    }
    else
    {
        [self incorrect];
    }
}

- (IBAction)bottomRight:(id)sender
{
    [self disableAll];
    
    if (buttonInt !=1 && buttonInt !=2 && buttonInt !=3)
    {
        [self correct];
    }
    else
    {
        [self incorrect];
    }
}

-(void)correct
{
    right.hidden = NO;
    nextLevel.hidden = NO;
    mainMenu.hidden = NO;
    
    if (click == 1 || click == 0)
    {
        click = 1;
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/correct.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        sound = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        sound.numberOfLoops = 0;
        [sound play];
    }
}

-(void)incorrect
{
    wrong.hidden = NO;
    tryAgain.hidden = NO;
    
    if (click == 1 || click == 0)
    {
        click = 1;
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/wrong.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        sound = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        sound.numberOfLoops = 0;
        [sound play];
    }
}

-(IBAction)newQuestion:(id)sender
{
    [self new];
}

@end
