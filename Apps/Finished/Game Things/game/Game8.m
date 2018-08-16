//
//  Game8.m
//  game
//
//  Created by Hassan Farooq on 12/8/13.
//  Copyright (c) 2013 example. All rights reserved.
//

#import "Game8.h"

@interface Game8 ()
- (IBAction)Pause:(id)sender;
- (IBAction)Resume:(id)sender;

@end

@implementation Game8

-  (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)up
{
    [self Collision];
    
    Player.center = CGPointMake(Player.center.x, Player.center.y -5);
    
    Player.bounds = CGRectMake(Player.center.x, Player.center.y, 50, 100);
    
    Player.image = [UIImage imageNamed:@"Car3.jpg"];
}

-(IBAction)down
{
    [self Collision];
    
    Player.center = CGPointMake(Player.center.x, Player.center.y +5);
    
    Player.bounds = CGRectMake(Player.center.x, Player.center.y, 50, 100);
    
    Player.image = [UIImage imageNamed:@"Car4.jpg"];
}

-(IBAction)right
{
    [self Collision];
    
    Player.center = CGPointMake(Player.center.x +5, Player.center.y);
    
    Player.bounds = CGRectMake(Player.center.x, Player.center.y, 100, 50);
    
    Player.image = [UIImage imageNamed:@"Car.jpg"];
}

-(IBAction)left
{
    [self Collision];
    
    Player.center = CGPointMake(Player.center.x -5, Player.center.y);
    
    Player.bounds = CGRectMake(Player.center.x, Player.center.y, 100, 50);
    
    Player.image = [UIImage imageNamed:@"Car2.jpg"];
}

-(void)Collision
{
    if (CGRectIntersectsRect(Enemy1.frame, Player.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Enemy2.frame, Player.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Enemy3.frame, Player.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Enemy4.frame, Player.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Enemy5.frame, Player.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Enemy6.frame, Player.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(End.frame, Player.frame))
    {
        [self Finished];
    }
    if (CGRectIntersectsRect(Boundary1.frame, Player.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Boundary2.frame, Player.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Boundary3.frame, Player.frame))
    {
        [self EndGame];
    }
    if (CGRectIntersectsRect(Boundary4.frame, Player.frame))
    {
        [self EndGame];
    }
}

-(void)EndGame
{
    [timer invalidate];
    [TimerLimit invalidate];
    
    Enemy1.hidden = YES;
    Enemy2.hidden = YES;
    Enemy3.hidden = YES;
    Enemy4.hidden = YES;
    Enemy5.hidden = YES;
    Enemy6.hidden = YES;
    End.hidden = YES;
    Crashed.hidden = NO;
    Won.hidden = YES;
    Player.hidden = YES;
    Boundary1.hidden = YES;
    Boundary2.hidden = YES;
    Boundary3.hidden = YES;
    Boundary4.hidden = YES;
    Up.hidden = YES;
    Down.hidden = YES;
    Left.hidden = YES;
    Right.hidden = YES;
    Next.hidden = YES;
    Level.hidden = NO;
    Resume.hidden = YES;
    Pause.hidden = YES;
    Retry.hidden = NO;
    OutOfTime.hidden = YES;
    Time.hidden = YES;
}

-(void)Finished
{
    [timer invalidate];
    [TimerLimit invalidate];
    
    Enemy1.hidden = YES;
    Enemy2.hidden = YES;
    Enemy3.hidden = YES;
    Enemy4.hidden = YES;
    Enemy5.hidden = YES;
    Enemy6.hidden = YES;
    End.hidden = YES;
    Crashed.hidden = YES;
    Won.hidden = NO;
    Player.hidden = YES;
    Boundary1.hidden = YES;
    Boundary2.hidden = YES;
    Boundary3.hidden = YES;
    Boundary4.hidden = YES;
    Up.hidden = YES;
    Down.hidden = YES;
    Left.hidden = YES;
    Right.hidden = YES;
    Next.hidden = NO;
    Level.hidden = NO;
    Resume.hidden = YES;
    Pause.hidden = YES;
    Retry.hidden = YES;
    OutOfTime.hidden = YES;
    Time.hidden = YES;
}

-(void)EnemyMove
{
    Enemy6.center = CGPointMake(Enemy6.center.x +2.25, Enemy6.center.y);
    if(Enemy6.center.x > 450)
    {
        Enemy6.center = CGPointMake(-45, Enemy6.center.y);
    }
}

-(void)TimingOnScreen
{
    ScoreNumber = ScoreNumber -1;
    Time.text = [NSString stringWithFormat:@"Time Left: %i", ScoreNumber];
}

-(void)TimeLimit
{ 
    Enemy1.hidden = YES;
    Enemy2.hidden = YES;
    Enemy3.hidden = YES;
    Enemy4.hidden = YES;
    Enemy5.hidden = YES;
    End.hidden = YES;
    Crashed.hidden = YES;
    Won.hidden = YES;
    Player.hidden = YES;
    Boundary1.hidden = YES;
    Boundary2.hidden = YES;
    Boundary3.hidden = YES;
    Up.hidden = YES;
    Down.hidden = YES;
    Left.hidden = YES;
    Right.hidden = YES;
    Next.hidden = YES;
    Level.hidden = NO;
    Resume.hidden = YES;
    Pause.hidden = YES;
    Retry.hidden = NO;
    OutOfTime.hidden = NO;
    Time.hidden = YES;
}

- (void)viewDidLoad
{
    Enemy1.hidden = NO;
    Enemy2.hidden = NO;
    Enemy3.hidden = NO;
    Enemy4.hidden = NO;
    Enemy5.hidden = NO;
    Enemy6.hidden = NO;
    End.hidden = NO;
    Crashed.hidden = YES;
    Won.hidden = YES;
    Player.hidden = NO;
    Boundary1.hidden = NO;
    Boundary2.hidden = NO;
    Boundary3.hidden = NO;
    Boundary4.hidden = NO;
    Up.hidden = NO;
    Down.hidden = NO;
    Left.hidden = NO;
    Right.hidden = NO;
    Next.hidden = YES;
    Level.hidden = YES;
    Resume.hidden = YES;
    Pause.hidden = NO;
    Retry.hidden = YES;
    OutOfTime.hidden = YES;
    Time.hidden = NO;
    
    ScoreNumber = 25;
    
    TimerLimit = [NSTimer scheduledTimerWithTimeInterval:25 target:self selector:@selector(TimeLimit) userInfo:nil repeats:NO];
    
    timer = [NSTimer scheduledTimerWithTimeInterval: 0.05 target: self selector:@selector(EnemyMove) userInfo:nil repeats:YES];
    
    TimerOnScreen = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(TimingOnScreen) userInfo:nil repeats:YES];
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Pause:(id)sender
{
    Enemy1.hidden = YES;
    Enemy2.hidden = YES;
    Enemy3.hidden = YES;
    Enemy4.hidden = YES;
    Enemy5.hidden = YES;
    Enemy6.hidden = YES;
    End.hidden = YES;
    Crashed.hidden = YES;
    Won.hidden = YES;
    Player.hidden = YES;
    Boundary1.hidden = YES;
    Boundary2.hidden = YES;
    Boundary3.hidden = YES;
    Boundary4.hidden = YES;
    Up.hidden = YES;
    Down.hidden = YES;
    Left.hidden = YES;
    Right.hidden = YES;
    Next.hidden = YES;
    Level.hidden = NO;
    Resume.hidden = NO;
    Pause.hidden = YES;
    Retry.hidden = YES;
    OutOfTime.hidden = YES;
    Time.hidden = YES;
}

- (IBAction)Resume:(id)sender
{
    Enemy1.hidden = NO;
    Enemy2.hidden = NO;
    Enemy3.hidden = NO;
    Enemy4.hidden = NO;
    Enemy5.hidden = NO;
    Enemy6.hidden = NO;
    End.hidden = NO;
    Crashed.hidden = YES;
    Won.hidden = YES;
    Player.hidden = NO;
    Boundary1.hidden = NO;
    Boundary2.hidden = NO;
    Boundary3.hidden = NO;
    Boundary4.hidden = NO;
    Up.hidden = NO;
    Down.hidden = NO;
    Left.hidden = NO;
    Right.hidden = NO;
    Next.hidden = YES;
    Level.hidden = YES;
    Resume.hidden = YES;
    Pause.hidden = NO;
    Retry.hidden = YES;
    OutOfTime.hidden = YES;
    Time.hidden = NO;
}

@end
