//
//  ViewController.h
//  Map
//
//  Created by Hassan Farooq on 1/7/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController
{
    IBOutlet MKMapView *mapView;
}

-(IBAction)findmylocation:(id)sender;
-(IBAction)setmaptype:(id)sender;

@end
