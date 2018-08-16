//
//  Level10.h
//  Maze
//
//  Created by Hassan Farooq on 12/23/13.
//  Copyright (c) 2013 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Level10 : UIViewController
{
    IBOutlet UIImageView *Player;
    
    IBOutlet UIImageView *Wall1;
    IBOutlet UIImageView *Wall2;
    IBOutlet UIImageView *Wall3;
    IBOutlet UIImageView *Wall4;
    IBOutlet UIImageView *Wall5;
    IBOutlet UIImageView *Wall6;
    IBOutlet UIImageView *Wall7;
    IBOutlet UIImageView *Wall8;
    IBOutlet UIImageView *Wall9;
    
    IBOutlet UIImageView *MovingEnemy1;
    IBOutlet UIImageView *MovingEnemy2;
    
    NSTimer *timer;
    
    IBOutlet UILabel *Finish;
    
    IBOutlet UIButton *Select;
    IBOutlet UIButton *Next;
    IBOutlet UIButton *Retry;
    
    IBOutlet UILabel *Won;
    IBOutlet UILabel *Lost;
}

-(void)Crashed;
-(void)EnemyMove;
-(void)EndGame;
-(void)won;

@end
