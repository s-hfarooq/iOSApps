//
//  ViewController.m
//  Flashlight
//
//  Created by Hassan Farooq on 1/1/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize Off, offView, On;

-(IBAction)torchOn:(id)sender
{
    On.hidden = YES;
    Off.hidden = NO;
    offView.hidden = YES;
    
    AVCaptureDevice *flashlight = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if ([flashlight isTorchAvailable] && [flashlight isTorchModeSupported:AVCaptureTorchModeOn])
    {
        BOOL success = [flashlight lockForConfiguration:nil];
        if (success)
        {
            [flashlight setTorchMode:AVCaptureTorchModeOn];
            [flashlight unlockForConfiguration];
        }
    }
}

-(IBAction)torchOff:(id)sender
{
    On.hidden = NO;
    Off.hidden = YES;
    offView.hidden = NO;
    
    AVCaptureDevice *flashlight = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if ([flashlight isTorchAvailable] && [flashlight isTorchModeSupported:AVCaptureTorchModeOn])
    {
        BOOL success = [flashlight lockForConfiguration:nil];
        if (success)
        {
            [flashlight setTorchMode:AVCaptureTorchModeOff];
            [flashlight unlockForConfiguration];
        }
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
