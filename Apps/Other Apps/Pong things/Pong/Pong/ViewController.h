//
//  ViewController.h
//  Pong
//
//  Created by Hassan Farooq on 2/8/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>

int Y;
int X;
int ComputerScoreNumber;
int PlayerScoreNumber;

@interface ViewController : UIViewController
{
    IBOutlet UIImageView *Player1;
    IBOutlet UIImageView *Player2;
    IBOutlet UIImageView *Computer1;
    IBOutlet UIImageView *Computer2;
    
    IBOutlet UIImageView *Ball;
    IBOutlet UIButton *StartButton;
    
    IBOutlet UILabel *PlayerScore;
    IBOutlet UILabel *ComputerScore;
    IBOutlet UILabel *WinOrLose;
    IBOutlet UIButton *Exit;
    
    NSTimer *timer;
}

-(IBAction)StartButton:(id)sender;
-(void)BallMovement;
-(void)ComputerMovement;
-(void)Collision;

@end
