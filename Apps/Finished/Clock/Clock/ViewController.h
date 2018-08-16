//
//  ViewController.h
//  Clock
//
//  Created by Hassan Farooq on 4/5/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *label;
    IBOutlet UILabel *currentTime;
    IBOutlet UIButton *timerStarter;
    
    IBOutlet UILabel *currentTime2;
    IBOutlet UILabel *label2;
    
    NSTimer *timerTime;
}

@end
