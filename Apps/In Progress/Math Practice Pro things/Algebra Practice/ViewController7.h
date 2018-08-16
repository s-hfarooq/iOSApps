//
//  ViewController7+v.h
//  Math Practice
//
//  Created by Hassan Farooq on 12/12/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

int click;

int A;
int B;
float D;
float E;
float F;
float G;

int Y1;
int Y2;
int X1;
int X2;
int M;
int questions;
int nquestions;
int qcorrect;
int qincorrect;
int qdone;

int buttonInt;

@interface ViewController7 : UIViewController
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
    
    IBOutlet UILabel *qsright;
    
    AVAudioPlayer *sound;
    
    IBOutlet UITextField *NInput;
    IBOutlet UIButton *NButton;
    IBOutlet UILabel *NLabel;
    
    IBOutlet UILabel *timer;
}

@end
