//
//  ViewController.m
//  savetest
//
//  Created by Hassan Farooq on 3/14/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    integer1 = 0;
    [label setText:[NSString stringWithFormat:@"%d", integer1]];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)Change
{
    integer1 += 1;
    [label setText:[NSString stringWithFormat:@"%d", integer1]];
}

-(IBAction)Save
{
    [[NSUserDefaults standardUserDefaults] setInteger:integer1 forKey:@"integer"];
}

-(IBAction)Load
{
    integer1 = [[NSUserDefaults standardUserDefaults] integerForKey:@"integer"];
    [label setText:[NSString stringWithFormat:@"%d", integer1]];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
