//
//  ProgressViewController.h
//  UIComponents
//
//  Created by Master on 4/14/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressViewController : UIViewController
- (IBAction)startCount:(id)sender;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@property (weak, nonatomic) IBOutlet UILabel *pecentDone;
@property (nonatomic, strong) NSTimer *startTimer;

@end
