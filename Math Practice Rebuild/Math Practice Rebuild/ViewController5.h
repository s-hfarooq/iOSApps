//
//  ViewController5.h
//  Math Practice Rebuild
//
//  Created by Hassan Farooq on 11/13/15.
//  Copyright © 2015 Hassan Farooq. All rights reserved.
//

#ifndef ViewController5_h
#define ViewController5_h
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

int click;

int A;
int B;

int D;
int E;
int F;
int G;

int Y1;
int Y2;
int X1;
int X2;
int M;

int buttonInt;

@interface ViewController5 : UIViewController
{
    IBOutlet UIButton *topLeftButton;
    IBOutlet UIButton *topRightButton;
    IBOutlet UIButton *bottomLeftButton;
    IBOutlet UIButton *bottomRightButton;
    
    IBOutlet UILabel *topLeftLabel;
    IBOutlet UILabel *topRightLabel;
    IBOutlet UILabel *bottomLeftLabel;
    IBOutlet UILabel *bottomRightLabel;
    
    IBOutlet UILabel *topMiddleLabel;
    IBOutlet UILabel *bottomMiddleLabel;
    IBOutlet UILabel *question;
    
    IBOutlet UILabel *wrong;
    IBOutlet UILabel *right;
    IBOutlet UIButton *tryAgain;
    IBOutlet UIButton *nextLevel;
    IBOutlet UIButton *mainMenu;
    
    AVAudioPlayer *sound;
}

@end

#endif /* ViewController5_h */
