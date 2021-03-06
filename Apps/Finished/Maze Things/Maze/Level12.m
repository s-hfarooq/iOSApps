//
//  Level12.m
//  Maze
//
//  Created by Hassan Farooq on 12/24/13.
//  Copyright (c) 2013 Hassan Farooq. All rights reserved.
//

#import "Level12.h"

@interface Level12 ()

@end

@implementation Level12

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
    if (CGRectIntersectsRect(Player.frame, Wall6.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall7.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall8.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall9.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall10.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall11.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall12.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Player.frame, Wall13.frame))
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
    Wall6.hidden = YES;
    Wall7.hidden = YES;
    Wall8.hidden = YES;
    Wall9.hidden = YES;
    Wall10.hidden = YES;
    Wall11.hidden = YES;
    Wall12.hidden = YES;
    Wall13.hidden = YES;
    Retry.hidden = NO;
    Lost.hidden = NO;
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
    Wall6.hidden = YES;
    Wall7.hidden = YES;
    Wall8.hidden = YES;
    Wall9.hidden = YES;
    Wall10.hidden = YES;
    Wall11.hidden = YES;
    Wall12.hidden = YES;
    Wall13.hidden = YES;
    Retry.hidden = YES;
    Lost.hidden = YES;
    Finish.hidden = YES;
    Select.hidden = NO;
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
    Wall6.hidden = NO;
    Wall7.hidden = NO;
    Wall8.hidden = NO;
    Wall9.hidden = NO;
    Wall10.hidden = NO;
    Wall11.hidden = NO;
    Wall12.hidden = NO;
    Wall13.hidden = NO;
    Retry.hidden = YES;
    Select.hidden = YES;
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