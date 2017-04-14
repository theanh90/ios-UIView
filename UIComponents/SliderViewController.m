//
//  SliderViewController.m
//  UIComponents
//
//  Created by Master on 4/12/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import "SliderViewController.h"

@interface SliderViewController ()

@end

@implementation SliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Slider View";
    [self.lblRealValue setText:@""];
    
    // link slider
    self.slider.minimumValue = 0;
    self.slider.maximumValue = 100;
    self.slider.minimumValueImage = [UIImage imageNamed:@"substract.png"];
    self.slider.maximumValueImage = [UIImage imageNamed:@"plus.png"];
    [self.slider addTarget:self action:@selector(sliderChange) forControlEvents:UIControlEventValueChanged];
}

- (void)sliderChange {
    [self.lblRealValue setText:[NSString stringWithFormat:@"%i", (int)self.slider.value]];
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

@end
