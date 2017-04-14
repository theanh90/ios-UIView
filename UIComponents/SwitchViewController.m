//
//  SwitchViewController.m
//  UIComponents
//
//  Created by Master on 4/12/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import "SwitchViewController.h"

@interface SwitchViewController ()

@end

@implementation SwitchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Switch View";
    
    // link switch
    [self.mySwitch addTarget:self action:@selector(switchChange) forControlEvents:UIControlEventValueChanged];
    [self.mySwitch setOn:NO];
}

- (void)switchChange {
    if (self.mySwitch.on) {
        [self.image setImage:[UIImage imageNamed:@"candle-on.png"]];
        [self.activity startAnimating];
    } else {
        [self.image setImage:[UIImage imageNamed:@"candle-off.png"]];
        [self.activity stopAnimating];
    }
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
