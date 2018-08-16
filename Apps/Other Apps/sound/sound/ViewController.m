//
//  ViewController.m
//  sound
//
//  Created by Hassan Farooq on 3/1/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)play:(id)sender
{
    if (click == 0)
    {
        click = 1;
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/cars005.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        sound = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        sound.numberOfLoops = 0;
        [sound play];
        [start setTitle:@"stop" forState:UIControlStateNormal];
        
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
