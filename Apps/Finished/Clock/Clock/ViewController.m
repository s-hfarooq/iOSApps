//
//  ViewController.m
//  Clock
//
//  Created by Hassan Farooq on 4/5/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)buttonPressed:(id)sender;

@end

@implementation ViewController
{
    bool *start;
    
    NSTimeInterval time;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

-(void)update
{
    if (start == false)
    {
        return;
    }
    
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    NSTimeInterval elapsedTime = currentTime - time;
    
    int minutes = (int)(elapsedTime / 60.0);
    int seconds = (int)(elapsedTime = elapsedTime - (minutes * 60.0));
    int hours = (int)(elapsedTime / 1440.0);

    label.text = [NSString stringWithFormat:@"%u:%2u:%4u", hours, minutes, seconds];
    label2.text = [NSString stringWithFormat:@"%u:%2u:%4u", hours, minutes, seconds];
    
    [self performSelector:@selector(update) withObject:self afterDelay:0.1];
}

- (void)viewDidLoad
{
    label.hidden = YES;
    label2.hidden = NO;
    currentTime.hidden = NO;
    currentTime2.hidden = YES;
    timerStarter.hidden = YES;
    
    if (start == false)
    {
        label2.hidden = YES;
    }
    
    timerTime = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    label.text = @"00:00:00";
    label2.text = @"00:00:00";
    start = false;
    
    [super viewDidLoad];
}

-(void)updateTimer
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm:ss"];
    currentTime.text = [formatter stringFromDate:[NSDate date]];
    currentTime2.text = currentTime.text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonPressed:(id)sender
{
    if (start == false)
    {
        start = true;
        
        time = [NSDate timeIntervalSinceReferenceDate];
        
        [sender setTitle:@"Stop" forState:UIControlStateNormal];
        
        [self update];
    }
    else
    {
        start = false;
        
        [sender setTitle:@"Start" forState:UIControlStateNormal];
    }
}

-(IBAction)timerScreen:(id)sender
{
    label.hidden = NO;
    label2.hidden = YES;
    currentTime.hidden = YES;
    currentTime2.hidden = NO;
    timerStarter.hidden = NO;
}

-(IBAction)clockScreen:(id)sender
{
    label.hidden = YES;
    label2.hidden = NO;
    currentTime.hidden = NO;
    currentTime2.hidden = YES;
    timerStarter.hidden = YES;
    
    if (start == false)
    {
        label2.hidden = YES;
    }
}

@end
