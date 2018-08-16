//
//  ViewControllerMain.h
//  Math Practice Rebuild
//
//  Created by Hassan Farooq on 11/15/15.
//  Copyright © 2015 Hassan Farooq. All rights reserved.
//

#ifndef ViewControllerMain_h
#define ViewControllerMain_h

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

int click;

int A;
int B;
int C;
float D;
float E;
float F;
float G;

int buttonInt;

@interface ViewController : UIViewController
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
    IBOutlet UILabel *question;
    
    IBOutlet UILabel *wrong;
    IBOutlet UILabel *right;
    IBOutlet UIButton *tryAgain;
    IBOutlet UIButton *nextLevel;
    IBOutlet UIButton *mainMenu;
    
    AVAudioPlayer *sound;
}

@end


#endif /* ViewControllerMain_h */
