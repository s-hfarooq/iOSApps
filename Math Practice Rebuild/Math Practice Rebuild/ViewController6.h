//
//  ViewController6.h
//  Math Practice Rebuild
//
//  Created by Hassan Farooq on 11/13/15.
//  Copyright © 2015 Hassan Farooq. All rights reserved.
//

#ifndef ViewController6_h
#define ViewController6_h
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

int click;

float A;
float B;

float D;
float E;
float F;
float G;

int buttonInt;

@interface ViewController6 : UIViewController
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

#endif /* ViewController6_h */
