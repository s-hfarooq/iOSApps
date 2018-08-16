//
//  ViewController7+v.m
//  Math Practice
//
//  Created by Hassan Farooq on 12/12/14.
//  Copyright (c) 2014 Hassan Farooq. All rights reserved.
// ADDITION - QUIZ
//

#import "ViewController7.h"


@interface ViewController7 ()

- (IBAction)topLeft:(id)sender;
- (IBAction)topRight:(id)sender;
- (IBAction)bottomLeft:(id)sender;
- (IBAction)bottomRight:(id)sender;

- (IBAction)newQuestion:(id)sender;

- (IBAction)tryAgain:(id)sender;

@end

@implementation ViewController7
{
    BOOL start;
    NSTimeInterval time;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad
{
    [self first];
    [super viewDidLoad];
    
    timer.text = @"0:00";
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)SelectQN:(id)sender
{
    [NInput resignFirstResponder];
    nquestions = [NInput.text intValue];
    [self new];
}

-(void)first
{
    [self disableAll];
    NInput.hidden = NO;
    NButton.hidden = NO;
    NLabel.hidden = NO;
}

-(void)new
{
    [self start];
    [self start2];
    [super viewDidLoad];
    [self timerStart];
}

-(void)start
{
    A = arc4random()%49+1;
    B = arc4random()%99+21;
    D = (1.0*(A + B));
    E = D - (arc4random()%5) - 1;
    F = D - (arc4random()%5) - 7;
    G = D + (arc4random()%5) + 1;
    
    if (E < 0 || F < 0 || G < 0)
    {
        [self start];
    }
}

-(void)start2
{
    NSString *incorrect1 = [NSString stringWithFormat:@"%d",(int)E];
    NSString *incorrect2 = [NSString stringWithFormat:@"%d",(int)F];
    NSString *incorrect3 = [NSString stringWithFormat:@"%d",(int)G];
    NSString *correct = [NSString stringWithFormat:@"%d",(int)D];
    NSString *questionString = [NSString stringWithFormat:@"%d + %d",A, B];
    
    buttonInt = arc4random()%4;
    if (buttonInt == 1)
    {
        question.text = questionString;
        bottomRightLabel.text = incorrect1;
        bottomLeftLabel.text = incorrect2;
        topRightLabel.text = incorrect3;
        topLeftLabel.text = correct;
        
    }
    else if (buttonInt == 2)
    {
        question.text = questionString;
        bottomRightLabel.text = incorrect1;
        bottomLeftLabel.text = incorrect2;
        topRightLabel.text = correct;
        topLeftLabel.text = incorrect3;
    }
    else if (buttonInt == 3)
    {
        question.text = questionString;
        bottomRightLabel.text = incorrect1;
        bottomLeftLabel.text = correct;
        topRightLabel.text = incorrect3;
        topLeftLabel.text = incorrect2;
    }
    else
    {
        question.text = questionString;
        bottomRightLabel.text = correct;
        bottomLeftLabel.text = incorrect2;
        topRightLabel.text = incorrect3;
        topLeftLabel.text = incorrect1;
    }
    
    [self disableAll];
    
    topLeftButton.hidden = NO;
    topRightButton.hidden = NO;
    bottomLeftButton.hidden = NO;
    bottomRightButton.hidden = NO;
    topLeftLabel.hidden = NO;
    topRightLabel.hidden = NO;
    bottomLeftLabel.hidden = NO;
    bottomRightLabel.hidden = NO;
    topMiddleLabel.hidden = NO;
    bottomMiddleLabel.hidden = NO;
    question.hidden = NO;
}

-(void)timerStart
{
    timer.hidden = NO;
    if (start == false)
    {
        start = true;
        time = [NSDate timeIntervalSinceReferenceDate];
        [self update];
    }
        else
        {
            start = false;
        }
    
}

-(void)update
{
    if (start == false)
    {
        return;
    }
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    NSTimeInterval elapsedTime = currentTime - time;
    int minutes = (int)(elapsedTime / 60.0);
    int seconds = (int)(elapsedTime = elapsedTime - (minutes * 60));
    timer.text = [NSString stringWithFormat:@"%u:%02u", minutes, seconds];
    [self performSelector:@selector(update) withObject:self afterDelay:0.1];
}

- (IBAction)tryAgain:(id)sender
{
    [self disableAll];
    
    topLeftButton.hidden = NO;
    topRightButton.hidden = NO;
    bottomLeftButton.hidden = NO;
    bottomRightButton.hidden = NO;
    topLeftLabel.hidden = NO;
    topRightLabel.hidden = NO;
    bottomLeftLabel.hidden = NO;
    bottomRightLabel.hidden = NO;
    topMiddleLabel.hidden = NO;
    bottomMiddleLabel.hidden = NO;
    question.hidden = NO;
}

- (void)disableAll
{
    topLeftButton.hidden = YES;
    topRightButton.hidden = YES;
    bottomLeftButton.hidden = YES;
    bottomRightButton.hidden = YES;
    topLeftLabel.hidden = YES;
    topRightLabel.hidden = YES;
    bottomLeftLabel.hidden = YES;
    bottomRightLabel.hidden = YES;
    topMiddleLabel.hidden = YES;
    bottomMiddleLabel.hidden = YES;
    question.hidden = YES;
    wrong.hidden = YES;
    right.hidden = YES;
    tryAgain.hidden = YES;
    nextLevel.hidden = YES;
    mainMenu.hidden = YES;
    NInput.hidden = YES;
    NButton.hidden = YES;
    NLabel.hidden = YES;
    timer.hidden = YES;
}

- (IBAction)topLeft:(id)sender
{
    [self disableAll];
    
    if (buttonInt == 1)
    {
        [self correct];
        qcorrect = qcorrect + 1;
    }
    else
    {
        [self incorrect];
        qincorrect = qincorrect + 1;
    }
}

-(IBAction)topRight:(id)sender
{
    [self disableAll];
    
    if (buttonInt == 2)
    {
        [self correct];
        qcorrect = qcorrect + 1;
    }
    else
    {
        [self incorrect];
        qincorrect = qincorrect + 1;
    }
}

- (IBAction)bottomLeft:(id)sender
{
    [self disableAll];
    
    if (buttonInt == 3)
    {
        [self correct];
        qcorrect = qcorrect + 1;
    }
    else
    {
        [self incorrect];
        qincorrect = qincorrect + 1;
    }
}

- (IBAction)bottomRight:(id)sender
{
    [self disableAll];
    
    if (buttonInt !=1 && buttonInt !=2 && buttonInt !=3)
    {
        [self correct];
        qcorrect = qcorrect + 1;
    }
    else
    {
        [self incorrect];
        qincorrect = qincorrect + 1;
    }
}

-(void)correct
{
    right.hidden = NO;
    nextLevel.hidden = NO;
    mainMenu.hidden = NO;
    
    if (click == 1 || click == 0)
    {
        click = 1;
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/correct.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        sound = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        sound.numberOfLoops = 0;
        [sound play];
        
        qdone = qdone + 1;
        
        if (qincorrect == 0)
        {
            questions = questions + 1;
        }
    }
}

-(void)incorrect
{
    wrong.hidden = NO;
    tryAgain.hidden = NO;
    
    //qsright.text = [NSString stringWithFormat:@"%i/%i", questions, nquestions];
    
    if (click == 1 || click == 0)
    {
        click = 1;
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/wrong.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        sound = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        sound.numberOfLoops = 0;
        [sound play];
    }
}

-(IBAction)newQuestion:(id)sender
{
    qsright.text = [NSString stringWithFormat:@"%i/%i", questions, nquestions];
    
    if (qdone != nquestions)
    {
        [self new];
    }else
    {
        [self disableAll];
        
        mainMenu.hidden = NO;
        timer.hidden = NO;
        start = false;
    }
    
    questions = 0;
}

@end