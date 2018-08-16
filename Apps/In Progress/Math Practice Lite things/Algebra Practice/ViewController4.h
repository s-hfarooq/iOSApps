//
//  ViewController4.h
//  Math Practice
//
//  Created by Hassan Farooq on 2/3/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <iAd/iAd.h>

int click;

int A;
int B;
int C;
int D;
int E;
int F;

int L;

float H;
float G;
float J;
float K;

int X;
int Y;

int buttonInt;

@interface ViewController4 : UIViewController <ADBannerViewDelegate>
{
    IBOutlet UIButton *topLeftButton;
    IBOutlet UIButton *topRightButton;
    IBOutlet UIButton *bottomLeftButton;
    IBOutlet UIButton *bottomRightButton;
    
    IBOutlet UILabel *topLeftLabel1;
    IBOutlet UILabel *topRightLabel1;
    IBOutlet UILabel *bottomLeftLabel1;
    IBOutlet UILabel *bottomRightLabel1;
    IBOutlet UILabel *topLeftLabel2;
    IBOutlet UILabel *topRightLabel2;
    IBOutlet UILabel *bottomLeftLabel2;
    IBOutlet UILabel *bottomRightLabel2;
    
    IBOutlet UILabel *topMiddleLabel;
    IBOutlet UILabel *bottomMiddleLabel;
    IBOutlet UILabel *question1;
    IBOutlet UILabel *question2;
    
    IBOutlet UILabel *wrong;
    IBOutlet UILabel *right;
    IBOutlet UIButton *tryAgain;
    IBOutlet UIButton *nextLevel;
    IBOutlet UIButton *mainMenu;
    
    AVAudioPlayer *sound;
}

@end