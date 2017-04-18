//
//  MainViewController.h
//  SimpleGame
//
//  Created by Master on 4/9/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleGameViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *img01;
@property (weak, nonatomic) IBOutlet UIImageView *img02;
@property (weak, nonatomic) IBOutlet UIImageView *img03;
@property (weak, nonatomic) IBOutlet UIImageView *img04;
@property (weak, nonatomic) IBOutlet UIImageView *img05;
@property (weak, nonatomic) IBOutlet UIImageView *img06;
@property (weak, nonatomic) IBOutlet UIImageView *img07;
@property (weak, nonatomic) IBOutlet UIImageView *img08;
@property (weak, nonatomic) IBOutlet UIImageView *img09;
@property (weak, nonatomic) IBOutlet UIImageView *img10;
@property (weak, nonatomic) IBOutlet UIImageView *img11;
@property (weak, nonatomic) IBOutlet UIImageView *img12;

@property (weak, nonatomic) IBOutlet UILabel *lblScore;
@property (weak, nonatomic) IBOutlet UILabel *countdown;

- (IBAction)playAgain:(id)sender;
- (IBAction)selectedImage:(id)sender;
- (IBAction)stopTimer:(id)sender;

@property (strong, nonatomic) NSTimer *timeOfActiveUser;
@property (strong, nonatomic) NSTimer *timeLog;


@end
