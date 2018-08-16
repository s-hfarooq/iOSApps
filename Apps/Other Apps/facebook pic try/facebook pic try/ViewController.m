//
//  ViewController.m
//  facebook pic try
//
//  Created by Hassan Farooq on 3/8/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)shareFB
{
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
    {
        slComposeViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [slComposeViewController addImage:[UIImage imageNamed:@"picture.jpg"]];
        [slComposeViewController addURL:[NSURL URLWithString:@"http://www.facebook.com"]];
        [self presentViewController:slComposeViewController animated:YES completion:NULL];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Facebook Account" message:@"There are no Facebook accounts configured" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
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
