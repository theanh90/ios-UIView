//
//  AFNetworkingViewController.m
//  UIComponents
//
//  Created by Master on 4/17/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import "AFNetworkingViewController.h"

@interface AFNetworkingViewController ()

@end

@implementation AFNetworkingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self testRequestApi];
}

- (void)testRequestApi {
    NSString *urlString = @"http://echo.jsontest.com/version/0.0.1/user/xxxyyy/role/admin";
    
    [Restful handleApiWithUrlString:urlString completionWithError:^(BOOL error) {
        if (error) {
            NSLog(@"Error");
        } else {
            NSLog(@"Success");
        }
    }];
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
