//
//  ViewController.h
//  sound
//
//  Created by Hassan Farooq on 3/1/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

int click;

@interface ViewController : UIViewController
{
    AVAudioPlayer *sound;
    IBOutlet UIButton *start;
}

-(IBAction)play:(id)sender;
@end
