//
//  ViewController.h
//  MapCoordinates
//
//  Created by Hassan Farooq on 3/28/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MessageUI/MessageUI.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MessageUI/MFMailComposeViewController.h>
#import "Social/Social.h"
#import "Accounts/Accounts.h"
#import "Twitter/Twitter.h"

float latFloat;
float longFloat;

@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate, CLLocationManagerDelegate, MKMapViewDelegate, MKOverlay>
{
    IBOutlet MKMapView *mapView;
    
    NSString *latitudeS;
    NSString *longitudeS;
    
    NSString *latitudeString;
    NSString *longitudeString;
    
    NSString *location;
    
    IBOutlet CLLocationManager *locationManager;
    IBOutlet UILabel *latLabel;
    IBOutlet UILabel *longLabel;
    NSTimer *timer;
    
    SLComposeViewController *mySLComposerSheet;
    
    CLLocationManager *lm;
    
    NSMutableArray *trackPointArray;

    MKMapRect routeRect;
    MKPolylineView* routeLineView;
    MKPolyline* routeLine;
    
    IBOutlet UIButton *startT;
    IBOutlet UIButton *stopT;
}

-(IBAction)findmylocation:(id)sender;
-(IBAction)setmaptype:(id)sender;
-(IBAction)actionSheetB;
-(IBAction)startTracking:(id)sender;
-(IBAction)stopTracking:(id)sender;
-(IBAction)clearTrack:(id)sender;

@property (weak, nonatomic) IBOutlet MKMapView *mapview;

@end