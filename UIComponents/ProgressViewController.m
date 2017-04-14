//
//  ProgressViewController.m
//  UIComponents
//
//  Created by Master on 4/14/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import "ProgressViewController.h"

@interface ProgressViewController ()

@end

@implementation ProgressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Progress";
    self.progressView.progress = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)startCount:(id)sender {
    self.startTimer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                                       target:self
                                                     selector:@selector(updateUI:)
                                                     userInfo:nil
                                                      repeats:YES];
    
}

- (void)updateUI:(NSTimer *)timer {
    NSLog(@"Da vao timeer");
    static float count = 0;
    count = count + 0.1;
    
    if (count <= 10) {
        self.progressView.progress = (float)count/10.0f;
        self.pecentDone.text = [NSString stringWithFormat:@"Done %.00f %%", count*10];
    } else {
        [self.startTimer invalidate];
        self.startTimer = nil;
    }
}


@end
