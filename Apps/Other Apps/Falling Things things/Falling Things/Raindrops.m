//
//  Raindrops.m
//  Falling Things
//
//  Created by Hassan Farooq on 12/24/13.
//  Copyright (c) 2013 Hassan Farooq. All rights reserved.
//

#import "Raindrops.h"

@interface Raindrops ()

@end

@implementation Raindrops

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)Fall
{
    Raindrop1.center = CGPointMake(Raindrop1.center.x, Raindrop1.center.y +2.4);
    if(Raindrop1.center.y > 600)
    {
        Raindrop1.center = CGPointMake(Raindrop1.center.x, -40);
    }
    
    Raindrop2.center = CGPointMake(Raindrop2.center.x, Raindrop2.center.y +2.3);
    if(Raindrop2.center.y > 600)
    {
        Raindrop2.center = CGPointMake(Raindrop2.center.x, -40);
    }
    
    Raindrop3.center = CGPointMake(Raindrop3.center.x, Raindrop3.center.y +3.5);
    if(Raindrop3.center.y > 600)
    {
        Raindrop3.center = CGPointMake(Raindrop3.center.x, -40);
    }
    
    Raindrop4.center = CGPointMake(Raindrop4.center.x, Raindrop4.center.y +2.5);
    if(Raindrop4.center.y > 600)
    {
        Raindrop4.center = CGPointMake(Raindrop4.center.x, -40);
    }
    
    Raindrop5.center = CGPointMake(Raindrop5.center.x, Raindrop5.center.y +3.7);
    if(Raindrop5.center.y > 600)
    {
        Raindrop5.center = CGPointMake(Raindrop5.center.x, -40);
    }
    
    Raindrop6.center = CGPointMake(Raindrop6.center.x, Raindrop6.center.y +2.9);
    if(Raindrop6.center.y > 600)
    {
        Raindrop6.center = CGPointMake(Raindrop6.center.x, -40);
    }
    
    Raindrop7.center = CGPointMake(Raindrop7.center.x, Raindrop7.center.y +2.2);
    if(Raindrop7.center.y > 600)
    {
        Raindrop7.center = CGPointMake(Raindrop7.center.x, -40);
    }
    
    Raindrop8.center = CGPointMake(Raindrop8.center.x, Raindrop8.center.y +2);
    if(Raindrop8.center.y > 600)
    {
        Raindrop8.center = CGPointMake(Raindrop8.center.x, -40);
    }
    
    Raindrop9.center = CGPointMake(Raindrop9.center.x, Raindrop9.center.y +2.6);
    if(Raindrop9.center.y > 600)
    {
        Raindrop9.center = CGPointMake(Raindrop9.center.x, -40);
    }
    
    Raindrop10.center = CGPointMake(Raindrop10.center.x, Raindrop10.center.y +2.7);
    if(Raindrop10.center.y > 600)
    {
        Raindrop10.center = CGPointMake(Raindrop10.center.x, -40);
    }
    
    Raindrop11.center = CGPointMake(Raindrop11.center.x, Raindrop11.center.y +3.2);
    if(Raindrop11.center.y > 600)
    {
        Raindrop11.center = CGPointMake(Raindrop11.center.x, -40);
    }
    
    Raindrop12.center = CGPointMake(Raindrop12.center.x, Raindrop12.center.y +2.9);
    if(Raindrop12.center.y > 600)
    {
        Raindrop12.center = CGPointMake(Raindrop12.center.x, -40);
    }
    
    Raindrop13.center = CGPointMake(Raindrop13.center.x, Raindrop13.center.y +2.1);
    if(Raindrop13.center.y > 600)
    {
        Raindrop13.center = CGPointMake(Raindrop13.center.x, -40);
    }
    
    Raindrop14.center = CGPointMake(Raindrop14.center.x, Raindrop14.center.y +2.2);
    if(Raindrop14.center.y > 600)
    {
        Raindrop14.center = CGPointMake(Raindrop14.center.x, -40);
    }
    
    Raindrop15.center = CGPointMake(Raindrop15.center.x, Raindrop15.center.y +2.7);
    if(Raindrop15.center.y > 600)
    {
        Raindrop15.center = CGPointMake(Raindrop15.center.x, -40);
    }
    
    Raindrop16.center = CGPointMake(Raindrop16.center.x, Raindrop16.center.y +3.2);
    if(Raindrop16.center.y > 600)
    {
        Raindrop16.center = CGPointMake(Raindrop16.center.x, -40);
    }
    Raindrop17.center = CGPointMake(Raindrop17.center.x, Raindrop17.center.y +2.6);
    if(Raindrop17.center.y > 600)
    {
        Raindrop17.center = CGPointMake(Raindrop17.center.x, -40);
    }
    Raindrop18.center = CGPointMake(Raindrop18.center.x, Raindrop18.center.y +2);
    if(Raindrop18.center.y > 600)
    {
        Raindrop18.center = CGPointMake(Raindrop18.center.x, -40);
    }
    Raindrop19.center = CGPointMake(Raindrop19.center.x, Raindrop19.center.y +2.1);
    if(Raindrop19.center.y > 600)
    {
        Raindrop19.center = CGPointMake(Raindrop19.center.x, -40);
    }
    Raindrop20.center = CGPointMake(Raindrop20.center.x, Raindrop20.center.y +2.5);
    if(Raindrop20.center.y > 600)
    {
        Raindrop20.center = CGPointMake(Raindrop20.center.x, -40);
    }
    Raindrop21.center = CGPointMake(Raindrop21.center.x, Raindrop21.center.y +2.3);
    if(Raindrop21.center.y > 600)
    {
        Raindrop21.center = CGPointMake(Raindrop21.center.x, -40);
    }
    Raindrop22.center = CGPointMake(Raindrop22.center.x, Raindrop22.center.y +2.4);
    if(Raindrop22.center.y > 600)
    {
        Raindrop22.center = CGPointMake(Raindrop22.center.x, -40);
    }
}

- (void)viewDidLoad
{
    timer = [NSTimer scheduledTimerWithTimeInterval: 0.05 target: self selector:@selector(Fall) userInfo:nil repeats:YES];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark iAd Delegate Methods

-(void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [banner setAlpha:1];
    [UIView commitAnimations];
    
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0];
    [banner setAlpha:1];
    [UIView commitAnimations];
}

@end