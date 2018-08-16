//
//  ViewController.m
//  Pong
//
//  Created by Hassan Farooq on 2/8/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *Drag = [[event allTouches] anyObject];
    Player.center = [Drag locationInView:self.view];
    
    if (Player.center.y < 270)
    {
        Player.center = CGPointMake(Player.center.x, 270);
    }
}

-(void)ComputerMovement
{
    if (Computer.center.x > Ball.center.x)
    {
        Computer.center = CGPointMake(Computer.center.x - 2, Computer.center.y);
    }
    
    if (Computer.center.x < Ball.center.x)
    {
        Computer.center = CGPointMake(Computer.center.x + 2, Computer.center.y);
    }
    
    if (Computer.center.x < 0)
    {
        Computer.center = CGPointMake(0, Computer.center.y);
    }
    
    if (Computer.center.x > 235)
    {
        Computer.center = CGPointMake(235, Computer.center.y);
    }
    
    if (Player.center.x < 15)
    {
        Player.center = CGPointMake(15, Player.center.y);
    }
    
    if (Player.center.x > 305)
    {
        Player.center = CGPointMake(305, Player.center.y);
    }
}

-(void)Collision
{
    if (CGRectIntersectsRect(Ball.frame, Player.frame))
    {
        Y = arc4random()%10;
        Y = 0 - Y;
    }
    
    if (CGRectIntersectsRect(Ball.frame, Computer.frame))
    {
        Y = arc4random()%5;
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
        Computer.center = CGPointMake(123, 20);
        
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
        Computer.center = CGPointMake(123, 20);
        
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
