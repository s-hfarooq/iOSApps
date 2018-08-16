//
//  ViewController.m
//  Maze
//
//  Created by Hassan Farooq on 12/23/13.
//  Copyright (c) 2013 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)Crashed
{
    if (CGRectIntersectsRect(Player.frame, Wall1.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall2.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall3.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall4.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall5.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Finish.frame))
    {
        [self won];
    }
}

-(void)EndGame
{
    Player.hidden = YES;
    Wall1.hidden = YES;
    Wall2.hidden = YES;
    Wall3.hidden = YES;
    Wall4.hidden = YES;
    Wall5.hidden = YES;
    Lost.hidden = NO;
    Next.hidden = YES;
    Retry.hidden = NO;
    Select.hidden = NO;
    Finish.hidden = YES;
    Won.hidden = YES;
}

-(void)won
{
    Player.hidden = YES;
    Wall1.hidden = YES;
    Wall2.hidden = YES;
    Wall3.hidden = YES;
    Wall4.hidden = YES;
    Wall5.hidden = YES;
    Lost.hidden = YES;
    Retry.hidden = YES;
    Finish.hidden = YES;
    Select.hidden = NO;
    Next.hidden = NO;
    Won.hidden = NO;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self Crashed];
    
    UITouch *myTouch = [[event allTouches] anyObject];
    Player.center = [myTouch locationInView:self.view];
}

- (void)viewDidLoad
{
    Player.hidden = NO;
    Wall1.hidden = NO;
    Wall2.hidden = NO;
    Wall3.hidden = NO;
    Wall4.hidden = NO;
    Wall5.hidden = NO;
    Retry.hidden = YES;
    Select.hidden = YES;
    Next.hidden = YES;
    Lost.hidden = YES;
    Finish.hidden = NO;
    Won.hidden = YES;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
