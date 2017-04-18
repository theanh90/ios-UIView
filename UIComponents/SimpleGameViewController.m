//
//  MainViewController.m
//  SimpleGame
//
//  Created by Master on 4/9/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import "SimpleGameViewController.h"
#include "stdlib.h"

@interface SimpleGameViewController ()

@end

@implementation SimpleGameViewController

int one;
int two;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self setTitle:@"Simple Game"];
    
}


- (void)setImageCanTab {
    for (int i=1; i<=12; i++) {
        UIImageView *imgView = (UIImageView *)[self.view viewWithTag:i];
        [imgView setUserInteractionEnabled:TRUE];
    }
}

- (void)setImageCannotTab {
    for (int i=1; i<=12; i++) {
        UIImageView *imgView = (UIImageView *)[self.view viewWithTag:i];
        [imgView setUserInteractionEnabled:FALSE];
    }
}


- (void)timeCountDown {
    NSLog(@"Countdown...");
    float time = [self.countdown.text floatValue] - 0.5;
    [self.countdown setText:[NSString stringWithFormat:@"%.1f", time]];
}

- (void)actionTimer{
    NSLog(@"Action timer...");
    [self stopTimer:nil];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Time out"
                                                                   message:@"You lost"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        [self playAgain:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        
        // disable tab gesture on image
        [self stopTimer:nil];
        [self setImageCannotTab];
        self.countdown.text = @"2";
    }];
    [alert addAction:okAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)stopTimer:(id)sender {
    NSLog(@"####### Stop timer #######");
    [self.timeLog invalidate];
    self.timeLog = nil;
    [self.timeOfActiveUser invalidate];
    self.timeOfActiveUser = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playAgain:(id)sender {
    int min = 1;
    int max = 12;
    
    one = min + arc4random() % (max - min);
    do {
        two = min + arc4random() % (max - min);
    } while(one == two);
    
    self.lblScore.text = @"0";
    
    for (int i=1; i<=12; i++) {
        UIImage *img = [UIImage imageNamed:@"question-mark.png"];
        UIImageView *imgView = (UIImageView *)[self.view viewWithTag:i];
        [imgView setImage:img];
    }
    
    // enable tab gesture on image
    [self setImageCanTab];
    
    // countdown time in textfield
    self.timeLog = [NSTimer scheduledTimerWithTimeInterval:0.5
                                                    target:self
                                                  selector:@selector(timeCountDown)
                                                  userInfo:nil
                                                   repeats:YES];
    
    // show alert when time out
    self.timeOfActiveUser = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                             target:self
                                                           selector:@selector(actionTimer)
                                                           userInfo:nil
                                                            repeats:NO];
}

- (IBAction)selectedImage:(id)sender {
    NSInteger tag = 0;
    UITapGestureRecognizer *tapRecognizer = (UITapGestureRecognizer *)sender;
    tag = [tapRecognizer.view tag];
    
    UIImage *img;
    
    if (tag == one || tag == two) {
        img = [UIImage imageNamed:@"cat-icon.png"];
        int score = [self.lblScore.text intValue] + 1;
        self.lblScore.text = [NSString stringWithFormat:@"%i", score];
    } else {
        img = [UIImage imageNamed:@"cry.png"];
    }
        
    UIImageView *imgView = (UIImageView *)[self.view viewWithTag:tag];
    [imgView setImage:img];
    
    // show alert victory
    int score = [self.lblScore.text intValue];
    if (score == 2) {
        [self stopTimer:self];
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Victory"
                                                                       message:@"You are the winner"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
            [self playAgain:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
            [self stopTimer:self];
            [self setImageCannotTab];
        }];
        [alert addAction:okAction];
        
        [self presentViewController:alert animated:YES completion:nil];
    }
    
}


@end
