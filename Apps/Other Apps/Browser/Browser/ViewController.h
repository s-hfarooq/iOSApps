//
//  ViewController.h
//  Browser
//
//  Created by Hassan Farooq on 1/29/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)exit:(id)sender;
- (IBAction)go:(id)sender;
- (IBAction)controls:(id)sender;

@property (weak, nonatomic) IBOutlet UIWebView *web;
@property (weak, nonatomic) IBOutlet UITextField *urlField;

@end
