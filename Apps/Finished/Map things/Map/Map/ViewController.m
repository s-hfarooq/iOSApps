//
//  ViewController.m
//  Map
//
//  Created by Hassan Farooq on 1/7/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(IBAction)findmylocation:(id)sender
{
    mapView.showsUserLocation = YES;
    mapView.delegate = self;
    [mapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
}

-(IBAction)setmaptype:(id)sender
{
    switch (((UISegmentedControl *)sender).selectedSegmentIndex)
    {
        case 0:
            mapView.mapType = MKMapTypeStandard;
            break;
            
        case 1:
            mapView.mapType = MKMapTypeSatellite;
            break;
            
        case 2:
            mapView.mapType = MKMapTypeHybrid;
            break;
            
        default:
            break;
    }
}

- (void)viewDidLoad
{
    mapView.showsUserLocation = YES;
    [mapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
