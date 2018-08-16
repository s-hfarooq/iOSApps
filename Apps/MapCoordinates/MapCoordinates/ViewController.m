//
//  ViewController.m
//  MapCoordinates
//
//  Created by Hassan Farooq on 3/28/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *headingLabel;
@property (weak, nonatomic) CLLocationManager *locationManager;
@property (weak, nonatomic) CLHeading *currentHeading;

@end

@implementation ViewController

@synthesize mapview;

- (void)viewDidLoad
{
    [self coordinateFind];
    [self coordinateFind];
    [self startTrack];
    [self startTrack];

    mapView.showsUserLocation = YES;
    [mapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    timer = [NSTimer scheduledTimerWithTimeInterval:0.25 target:self selector:@selector(coordinateFind) userInfo:nil repeats:YES];
    
    startT.hidden = YES;
    stopT.hidden = NO;
    
    [super viewDidLoad];
    
    self.currentHeading = [[CLHeading alloc] init];
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.headingFilter = 1;
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingHeading];
	// Do any additional setup after loading the view, typically from a nib.
}

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

-(IBAction)actionSheetB
{
    UIActionSheet *actionsheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Send Your Current Location"
                                  delegate:self
                                  cancelButtonTitle:@"Cancel"
                                  destructiveButtonTitle:nil
                                  otherButtonTitles:@"SMS (Text)",@"Email",@"Post to Facbook",@"Tweet", nil];
    [actionsheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [self text];
    }
    if (buttonIndex == 1)
    {
        [self email];
    }
    if (buttonIndex == 2)
    {
        [self PostToFacebook];
    }
    if (buttonIndex == 3)
    {
        [self SendATweet];
    }
}

- (IBAction)startTracking:(id)sender
{
    [self startTrack];
    [self startTrack];
}

-(void)startTrack
{
    lm = [[CLLocationManager alloc] init];
    lm.delegate = self;
    lm.desiredAccuracy = kCLLocationAccuracyBest;
    lm.distanceFilter = kCLDistanceFilterNone;
    [lm startUpdatingLocation];
    
    mapview.delegate = self;
    mapview.showsUserLocation = YES;
    
    lm.headingFilter = kCLHeadingFilterNone;
    [lm startUpdatingHeading];
    
    startT.hidden = YES;
    stopT.hidden = NO;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *currentLocation = [locations lastObject];
    
    [trackPointArray addObject:currentLocation];
    
    CLLocationDegrees Latitude = currentLocation.coordinate.latitude;
    CLLocationDegrees Longitude = currentLocation.coordinate.longitude;
    CLLocationCoordinate2D locationCoordinates = CLLocationCoordinate2DMake(Latitude, Longitude);
        
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(locationCoordinates, 1000, 1000);
    MKCoordinateRegion adjustedRegion = [mapview regionThatFits:viewRegion]; [mapview setRegion:adjustedRegion animated:YES];
    
    NSInteger numberOfSteps = trackPointArray.count;
    
    CLLocationCoordinate2D coordinates[numberOfSteps];
    for (NSInteger index = 0; index < numberOfSteps; index++)
    {
        CLLocation *location = [trackPointArray objectAtIndex:index];
        CLLocationCoordinate2D coordinate2 = location.coordinate;
        
        coordinates[index] = coordinate2;
    }
    
    MKPolyline *polyLine = [MKPolyline polylineWithCoordinates:coordinates count:numberOfSteps];
    [mapview addOverlay:polyLine];
}

- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)overlay
{
    MKPolylineView *polylineView = [[MKPolylineView alloc] initWithPolyline:overlay];
    polylineView.strokeColor = [UIColor blueColor];
    polylineView.lineWidth = 4.0;
    
    return polylineView;
}

- (IBAction)stopTracking:(id)sender
{
    lm = [[CLLocationManager alloc] init];
    [lm stopUpdatingLocation];
    lm = nil;
    
    mapview.showsUserLocation = YES;
    
    trackPointArray = nil;
    trackPointArray = [[NSMutableArray alloc] init];
    
    stopT.hidden = YES;
    startT.hidden = NO;
}

- (IBAction)clearTrack:(id)sender
{
    [mapview removeOverlays: mapview.overlays];
}

-(void)coordinateFind
{
    latitudeS  = [NSString stringWithFormat:@"%f", locationManager.location.coordinate.latitude];
    longitudeS = [NSString stringWithFormat:@"%f", locationManager.location.coordinate.longitude];
    
    latFloat = [latitudeS floatValue];
    longFloat = [longitudeS floatValue];
    
    if (latFloat > 0 || latFloat == 0)
    {
        latLabel.text = [NSString stringWithFormat:@"%f N", latFloat];
    }
    if (longFloat > 0 || latFloat == 0)
    {
        longLabel.text = [NSString stringWithFormat:@"%f E", longFloat];
    }
    if (latFloat < 0)
    {
        latFloat = latFloat * -1;
        latLabel.text = [NSString stringWithFormat:@"%f S", latFloat];
    }
    if (longFloat < 0)
    {
        longFloat = longFloat * -1;
        longLabel.text = [NSString stringWithFormat:@"%f W", longFloat];
    }
    
    latitudeString = latLabel.text;
    longitudeString = longLabel.text;

    locationManager = [[CLLocationManager alloc] init];
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    [locationManager startUpdatingLocation];
}

-(void)email
{
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
    [composer setMailComposeDelegate:self];
    
    if ([MFMailComposeViewController canSendMail])
    {
        [composer setSubject:@"My Current Location"];
        [composer setMessageBody:[NSString stringWithFormat:@"Hello, my current lattitude is %@, and my current longitude is %@", latitudeString, longitudeString] isHTML:NO];
        [composer setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
        [self presentModalViewController:composer animated:YES];
    }
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    if (error)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"error" message:[NSString stringWithFormat:@"error %@", [error description]] delegate:nil cancelButtonTitle:@"dismiss" otherButtonTitles:nil, nil];
        [alert show];
        [self dismissModalViewControllerAnimated:YES];
    }
    else
    {
        [self dismissModalViewControllerAnimated:YES];
    }
}

-(void)text
{
    MFMessageComposeViewController *textComposer = [[MFMessageComposeViewController alloc] init];
    [textComposer setMessageComposeDelegate:self];
    
    if ([MFMessageComposeViewController canSendText])
    {
        [textComposer setBody:[NSString stringWithFormat:@"Hello, my current lattitude is %@, and my current longitude is %@",latitudeString, longitudeString]];
        [textComposer setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
        [self presentModalViewController:textComposer animated:YES];
        [self presentViewController:textComposer animated:YES completion:NULL];
    }
    else
    {
        [self dismissModalViewControllerAnimated:YES];
    }
}

-(void)PostToFacebook
{
    mySLComposerSheet = [[SLComposeViewController alloc] init];
    mySLComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [mySLComposerSheet setInitialText:[NSString stringWithFormat:@"Hello, my current lattitude is %@, and my current longitude is %@",latitudeString, longitudeString]];
    [self presentViewController:mySLComposerSheet animated:YES completion:NULL];
}

-(void)SendATweet
{
    TWTweetComposeViewController *tweet = [[TWTweetComposeViewController alloc] init];
    [tweet setInitialText:[NSString stringWithFormat:@"Hello, my current lattitude is %@, and my current longitude is %@",latitudeString, longitudeString]];
    [self presentModalViewController:tweet animated:YES];
}

-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
    MFMessageComposeViewController *textComposer = [[MFMessageComposeViewController alloc] init];
    
    switch (result)
    {
        case MessageComposeResultSent:
            NSLog(@"Can't Send Text");
            [self dismissModalViewControllerAnimated:YES];
            [self alert];
            break;
        case MessageComposeResultFailed:
            NSLog(@"Failed");
            [self alert2];
            break;
        case MessageComposeResultCancelled:
            NSLog(@"Canceled");
            [self dismissModalViewControllerAnimated:YES];
            break;
        default:
            break;
    }
}

-(void)alert
{
    UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"Sent" message:@"SMS (Text) was sent sucessfully" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil, nil];
    [alert2 show];
}

-(void)alert2
{
    UIAlertView *alert3 = [[UIAlertView alloc] initWithTitle:@"Message Falied" message:@"The SMS (Text) was not sent sucessfully" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil, nil];
    [alert3 show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma Location Manager Methods 

-(void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    self.currentHeading = newHeading;
    
    if (newHeading.magneticHeading < 338 && newHeading.magneticHeading > 359)
    {
        location = [NSString stringWithFormat:@"N"];
    }
    if (newHeading.magneticHeading < 23 && newHeading.magneticHeading > 0)
    {
        location = [NSString stringWithFormat:@"N"];
    }
    if (newHeading.magneticHeading < 68 && newHeading.magneticHeading > 23)
    {
        location = [NSString stringWithFormat:@"NE"];
    }
    if (newHeading.magneticHeading < 113 && newHeading.magneticHeading > 68)
    {
        location = [NSString stringWithFormat:@"E"];
    }
    if (newHeading.magneticHeading < 158 && newHeading.magneticHeading > 113)
    {
        location = [NSString stringWithFormat:@"SE"];
    }
    if (newHeading.magneticHeading < 203 && newHeading.magneticHeading > 158)
    {
        location = [NSString stringWithFormat:@"S"];
    }
    if (newHeading.magneticHeading < 248 && newHeading.magneticHeading > 203)
    {
        location = [NSString stringWithFormat:@"SW"];
    }
    if (newHeading.magneticHeading < 293 && newHeading.magneticHeading > 248)
    {
        location = [NSString stringWithFormat:@"W"];
    }
    if (newHeading.magneticHeading < 338 && newHeading.magneticHeading > 293)
    {
        location = [NSString stringWithFormat:@"NW"];
    }
    
    self.headingLabel.text = [NSString stringWithFormat:@"Compass: %d %@", (int)newHeading.magneticHeading, location];
}

-(BOOL)locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)manager
{
    if (self.currentHeading == nil)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end