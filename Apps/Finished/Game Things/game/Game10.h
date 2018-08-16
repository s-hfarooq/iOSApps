//
//  Game10.h
//  Car Parking Game
//
//  Created by Hassan Farooq on 1/2/14.
//  Copyright (c) 2014 example. All rights reserved.
//

#import <UIKit/UIKit.h>

int ScoreNumber;

@interface Game10 : UIViewController
{
    IBOutlet UIImageView *Enemy1;
    IBOutlet UIImageView *Enemy2;
    IBOutlet UIImageView *Enemy3;
    IBOutlet UIImageView *Enemy4;
    IBOutlet UIImageView *Enemy5;
    IBOutlet UIImageView *Enemy6;
    IBOutlet UIImageView *Enemy7;
    IBOutlet UIImageView *End;
    
    IBOutlet UILabel *Crashed;
    IBOutlet UILabel *Won;
    
    IBOutlet UIImageView *Player;
    
    IBOutlet UIImageView *Boundary1;
    IBOutlet UIImageView *Boundary2;
    IBOutlet UIImageView *Boundary3;
    
    NSTimer *timer;
    
    NSTimer *TimerLimit;
    
    NSTimer *TimerOnScreen;
    
    IBOutlet UIButton *Up;
    IBOutlet UIButton *Down;
    IBOutlet UIButton *Left;
    IBOutlet UIButton *Right;
    IBOutlet UIButton *Level;
    
    IBOutlet UIButton *Resume;
    IBOutlet UIButton *Pause;
    
    IBOutlet UILabel *OutOfTime;
    IBOutlet UIButton *Retry;
    
    IBOutlet UILabel *Time;
}

-(void)Collision;
-(void)EndGame;
-(void)EnemyMove;
-(void)Finished;
-(void)TimeLimit;
-(void)TimingOnScreen;

-(IBAction)up;
-(IBAction)down;
-(IBAction)right;
-(IBAction)left;

@end
