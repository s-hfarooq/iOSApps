//
//  ViewController2.h
//  Algebra Practice
//
//  Created by Hassan Farooq on 2/2/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <iAd/iAd.h>

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

int buttonInt;

@interface ViewController2 : UIViewController <ADBannerViewDelegate>
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
