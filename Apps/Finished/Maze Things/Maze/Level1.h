//
//  Level1.h
//  Maze
//
//  Created by Hassan Farooq on 12/23/13.
//  Copyright (c) 2013 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Level1 : UIViewController
{
    IBOutlet UIImageView *Player;
    
    IBOutlet UIImageView *Wall1;
    IBOutlet UIImageView *Wall2;
    IBOutlet UIImageView *Wall3;
    IBOutlet UIImageView *Wall4;
    
    IBOutlet UILabel *Finish;
    
    IBOutlet UIButton *Select;
    IBOutlet UIButton *Next;
    
    IBOutlet UILabel *Won;
    IBOutlet UILabel *Lost;
}

-(void)Crashed;
-(void)EndGame;
-(void)won;

@end
