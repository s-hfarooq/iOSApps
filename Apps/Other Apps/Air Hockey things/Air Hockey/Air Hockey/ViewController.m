//
//  ViewController.m
//  Air Hockey
//
//  Created by Hassan Farooq on 2/16/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *Drag = [[event allTouches] anyObject];
    UITouch *Drag2 = [[event allTouches] anyObject];
    Player1.center = [Drag locationInView:self.view];
    Player2.center = [Drag2 locationInView:self.view];
    
    if (Player1.center.y == Player2.center.y)
    {
        Player2.center = CGPointMake(Player2.center.x, Player2.center.y + 20);
    }
    
    if (Player1.center.y < 270)
    {
        Player1.center = CGPointMake(Player1.center.x, 270);
    }
    
    if (Player2.center.y < 290)
    {
        Player2.center = CGPointMake(Player2.center.x, 290);
    }
    
    if (Player1.center.y == Player2.center.y)
    {
        Player2.center = CGPointMake(Player2.center.x, Player2.center.y + 20);
    }
}

-(void)ComputerMovement
{
    if (Computer1.center.x > Ball.center.x)
    {
        Computer1.center = CGPointMake(Computer1.center.x - 2, Computer1.center.y);
    }
    if (Computer2.center.x > Ball.center.x)
    {
        Computer2.center = CGPointMake(Computer2.center.x - 2, Computer2.center.y);
    }
    
    if (Computer1.center.x < Ball.center.x)
    {
        Computer1.center = CGPointMake(Computer1.center.x + 2, Computer1.center.y);
    }
    if (Computer2.center.x < Ball.center.x)
    {
        Computer2.center = CGPointMake(Computer2.center.x + 2, Computer2.center.y);
    }
    
    if (Computer1.center.x < 0)
    {
        Computer1.center = CGPointMake(0, Computer1.center.y);
    }
    if (Computer2.center.x < 0)
    {
        Computer2.center = CGPointMake(0, Computer2.center.y);
    }
    
    if (Computer1.center.x > 235)
    {
        Computer1.center = CGPointMake(235, Computer1.center.y);
    }
    if (Computer2.center.x > 235)
    {
        Computer2.center = CGPointMake(235, Computer2.center.y);
    }
    
    if (Player1.center.x < 15)
    {
        Player1.center = CGPointMake(15, Player1.center.y);
    }
    if (Player2.center.x < 15)
    {
        Player2.center = CGPointMake(15, Player2.center.y);
    }
    
    if (Player1.center.x > 305)
    {
        Player1.center = CGPointMake(305, Player1.center.y);
    }
    if (Player2.center.x > 305)
    {
        Player2.center = CGPointMake(305, Player2.center.y);
    }
}

-(void)Collision
{
    if (CGRectIntersectsRect(Ball.frame, Computer2.frame))
    {
        if (Y < 0)
        {
            Y = (arc4random()%10) + 1;
        }
        
        Y = Y;
    }
    
    if (CGRectIntersectsRect(Ball.frame, Computer1.frame))
    {
        Y = 0 - Y;
    }
    
    if (CGRectIntersectsRect(Ball.frame, Player2.frame))
    {
        if (Y < 0)
        {
            Y = (arc4random()%10) + 1;
        }
        
        Y = Y;
    }
    if (CGRectIntersectsRect(Ball.frame, Player1.frame))
    {
        Y = 0 - Y;
    }
}

-(IBAction)StartButton:(id)sender
{
    StartButton.hidden = YES;
    Exit.hidden = YES;
    
    Y = arc4random()%11;
    Y = Y - 5;
    
    X = arc4random()%11;
    X = X -5;
    
    if (Y == 0)
    {
        Y = 1;
    }
    if (X == 0)
    {
        X = 1;
    }
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(BallMovement) userInfo:nil repeats:YES];
    timer2 = [NSTimer scheduledTimerWithTimeInterval:0.000001 target:self selector:@selector(Collision) userInfo:nil repeats:YES];
}

-(void)BallMovement
{
    [self ComputerMovement];
    [self Collision];
    
    Ball.center = CGPointMake(Ball.center.x + X, Ball.center.y + Y);
    
    if (Ball.center.x < 15)
    {
        X = 0 - X;
    }
    if (Ball.center.x > 305)
    {
        X = 0 - X;
    }
    
    if (Ball.center.y < 0)
    {
        PlayerScoreNumber = PlayerScoreNumber + 1;
        PlayerScore.text = [NSString stringWithFormat:@"%i", PlayerScoreNumber];
        
        [timer invalidate];
        StartButton.hidden = NO;
        
        Ball.center = CGPointMake(145, 220);
        Computer1.center = CGPointMake(123, 30);
        Computer2.center = CGPointMake(123, 10);
        Player1.center = CGPointMake(123, 510);
        Player2.center = CGPointMake(123, 530);
        
        if (PlayerScoreNumber == 10)
        {
            StartButton.hidden = YES;
            Exit.hidden = NO;
            WinOrLose.hidden = NO;
            WinOrLose.text = [NSString stringWithFormat:@"You Win!"];
        }
    }
    
    if (Ball.center.y > 570)
    {
        ComputerScoreNumber = ComputerScoreNumber + 1;
        ComputerScore.text = [NSString stringWithFormat:@"%i", ComputerScoreNumber];
        [timer invalidate];
        StartButton.hidden = NO;
        Ball.center = CGPointMake(145, 220);
        Computer1.center = CGPointMake(123, 30);
        Computer2.center = CGPointMake(123, 10);
        Player1.center = CGPointMake(123, 510);
        Player2.center = CGPointMake(123, 530);
        
        if (ComputerScoreNumber == 10)
        {
            StartButton.hidden = YES;
            Exit.hidden = NO;
            WinOrLose.hidden = NO;
            WinOrLose.text = [NSString stringWithFormat:@"You Lose!"];
        }
    }
}

- (void)viewDidLoad
{
    PlayerScoreNumber = 0;
    ComputerScoreNumber = 0;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end