//
//  ViewController4.m
//  Math Practice Rebuild
//
//  Created by Hassan Farooq on 11/13/15.
//  Copyright © 2015 Hassan Farooq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController4.h"

@interface ViewController4 ()

- (IBAction)topLeft:(id)sender;
- (IBAction)topRight:(id)sender;
- (IBAction)bottomLeft:(id)sender;
- (IBAction)bottomRight:(id)sender;

- (IBAction)newQuestion:(id)sender;

- (IBAction)tryAgain:(id)sender;

@end

@implementation ViewController4

- (void)viewDidLoad
{
    if ([[UIScreen mainScreen]bounds].size.height == 480)
    {
        topLeftButton.center = CGPointMake(75, 50);
        topRightButton.center = CGPointMake(405, 50);
        bottomLeftButton.center = CGPointMake(75, 270);
        bottomRightButton.center = CGPointMake(405, 270);
        
        topLeftLabel1.center = CGPointMake(75, 21);
        topRightLabel1.center = CGPointMake(405, 21);
        bottomLeftLabel1.center = CGPointMake(75, 241);
        bottomRightLabel1.center = CGPointMake(405, 241);
        
        topLeftLabel2.center = CGPointMake(75, 79);
        topRightLabel2.center = CGPointMake(405, 79);
        bottomLeftLabel2.center = CGPointMake(75, 299);
        bottomRightLabel2.center = CGPointMake(405, 299);
        
        topMiddleLabel.center = CGPointMake(240, 34.5);
        question1.center = CGPointMake(240, 128.5);
        question2.center = CGPointMake(240, 190.5);
        
        wrong.center = CGPointMake(240, 117);
        right.center = CGPointMake(240.5, 128);
        tryAgain.center = CGPointMake(240, 187);
        nextLevel.center = CGPointMake(240, 195);
        mainMenu.center = CGPointMake(240.5, 238.5);
    }
    
    [self new];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)new
{
    [self start];
    [self start2];
    [super viewDidLoad];
}

-(void)start
{
    A = arc4random()%19+1;
    B = arc4random()%29+1;
    C = arc4random()%14+1;
    D = arc4random()%9+1;
    E = arc4random()%24+1;
    F = arc4random()%19+1;
    
    L = arc4random()%21+2;
    
    H = ((float)F - ((float)D*(float)C / (float)A)) / ((float)E - ((float)D*(float)B / (float)A));
    G = ((float)C - (float)B * H) / (float)A;
    while ((A*G) + (B*H) !=C || (D*G) + (E*H) !=F)
    {
        [self start];
    }
    while ((A*G) + (B*H) !=C && (D*G) + (E*H) !=F)
    {
        [self start];
    }
    
    J = H - (arc4random()%5) - 7;
    K = H + (arc4random()%5) + 1;
}

-(void)start2
{
    NSString *correct1 = [NSString stringWithFormat:@"Y=%3.2f",H];
    NSString *correct2 = [NSString stringWithFormat:@"X=%3.2f",G];
    NSString *incorrect11 = [NSString stringWithFormat:@"Y=%3.2f",G];
    NSString *incorrect12 = [NSString stringWithFormat:@"X=%3.2f",H];
    NSString *incorrect21 = [NSString stringWithFormat:@"Y=%3.2f",J];
    NSString *incorrect22 = [NSString stringWithFormat:@"X=%3.2f",(float)L];
    NSString *incorrect31 = [NSString stringWithFormat:@"Y=%3.2f",K];
    NSString *incorrect32 = [NSString stringWithFormat:@"X=%3.2f",(float)D];
    NSString *questionString1 = [NSString stringWithFormat:@"%dX + %dY = %d", A, B, C];
    NSString *questionString2 = [NSString stringWithFormat:@"%dX + %dY = %d", D, E, F];
    
    buttonInt = arc4random()%4;
    if (buttonInt == 1)
    {
        question1.text = questionString1;
        question2.text = questionString2;
        bottomRightLabel1.text = incorrect11;
        bottomLeftLabel1.text = incorrect21;
        topRightLabel1.text = incorrect31;
        topLeftLabel1.text = correct1;
        bottomRightLabel2.text = incorrect12;
        bottomLeftLabel2.text = incorrect22;
        topRightLabel2.text = incorrect32;
        topLeftLabel2.text = correct2;
        
    }
    else if (buttonInt == 2)
    {
        question1.text = questionString1;
        question2.text = questionString2;
        bottomRightLabel1.text = incorrect11;
        bottomLeftLabel1.text = incorrect21;
        topRightLabel1.text = correct1;
        topLeftLabel1.text = incorrect32;
        bottomRightLabel2.text = incorrect12;
        bottomLeftLabel2.text = incorrect22;
        topRightLabel2.text = correct2;
        topLeftLabel2.text = incorrect32;
    }
    else if (buttonInt == 3)
    {
        question1.text = questionString1;
        question2.text = questionString2;
        bottomRightLabel1.text = incorrect11;
        bottomLeftLabel1.text = correct1;
        topRightLabel1.text = incorrect31;
        topLeftLabel1.text = incorrect21;
        bottomRightLabel2.text = incorrect12;
        bottomLeftLabel2.text = correct2;
        topRightLabel2.text = incorrect32;
        topLeftLabel2.text = incorrect22;
    }
    else
    {
        question1.text = questionString1;
        question2.text = questionString2;
        bottomRightLabel1.text = correct1;
        bottomLeftLabel1.text = incorrect21;
        topRightLabel1.text = incorrect31;
        topLeftLabel1.text = incorrect11;
        bottomRightLabel2.text = correct2;
        bottomLeftLabel2.text = incorrect22;
        topRightLabel2.text = incorrect32;
        topLeftLabel2.text = incorrect12;
    }
    
    [self disableAll];
    
    topLeftButton.hidden = NO;
    topRightButton.hidden = NO;
    bottomLeftButton.hidden = NO;
    bottomRightButton.hidden = NO;
    topLeftLabel1.hidden = NO;
    topRightLabel1.hidden = NO;
    bottomLeftLabel1.hidden = NO;
    bottomRightLabel1.hidden = NO;
    topLeftLabel2.hidden = NO;
    topRightLabel2.hidden = NO;
    bottomLeftLabel2.hidden = NO;
    bottomRightLabel2.hidden = NO;
    topMiddleLabel.hidden = NO;
    bottomMiddleLabel.hidden = NO;
    question1.hidden = NO;
    question2.hidden = NO;
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
    topLeftLabel1.hidden = NO;
    topRightLabel1.hidden = NO;
    bottomLeftLabel1.hidden = NO;
    bottomRightLabel1.hidden = NO;
    topLeftLabel2.hidden = NO;
    topRightLabel2.hidden = NO;
    bottomLeftLabel2.hidden = NO;
    bottomRightLabel2.hidden = NO;
    topMiddleLabel.hidden = NO;
    bottomMiddleLabel.hidden = NO;
    question1.hidden = NO;
    question2.hidden = NO;
}

- (void)disableAll
{
    topLeftButton.hidden = YES;
    topRightButton.hidden = YES;
    bottomLeftButton.hidden = YES;
    bottomRightButton.hidden = YES;
    topLeftLabel1.hidden = YES;
    topRightLabel1.hidden = YES;
    bottomLeftLabel1.hidden = YES;
    bottomRightLabel1.hidden = YES;
    topLeftLabel2.hidden = YES;
    topRightLabel2.hidden = YES;
    bottomLeftLabel2.hidden = YES;
    bottomRightLabel2.hidden = YES;
    topMiddleLabel.hidden = YES;
    bottomMiddleLabel.hidden = YES;
    question1.hidden = YES;
    question2.hidden = YES;
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