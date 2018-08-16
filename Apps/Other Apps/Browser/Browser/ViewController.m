//
//  ViewController.m
//  Browser
//
//  Created by Hassan Farooq on 1/29/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [self go:nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)exit:(id)sender
{
    [_urlField resignFirstResponder];
    _web.alpha = 1.0;
}

- (IBAction)go:(id)sender
{
    NSString *string = [_urlField text];
    NSURL *url = [NSURL URLWithString:string];
    [self.web loadRequest:[NSURLRequest requestWithURL:url]];
    [_urlField resignFirstResponder];
    _web.alpha = 1.0;
}

- (IBAction)controls:(id)sender
{
    _web.alpha = 0.0;
}

@end
