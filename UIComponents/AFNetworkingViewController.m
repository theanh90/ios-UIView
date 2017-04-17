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
    
//    [self testRequestApi];
    [self getRestful];
    [self postRestful];
}

- (void)getRestful {
    NSString  *urlString = @"http://echo.jsontest.com/version/0.0.1/user/master/role/admin/method/get";
    NSMutableDictionary *params = [NSMutableDictionary new];
    [params setObject:@"" forKey:@""];
    
    [Restful getApiWithUrlString:urlString andParams:params completeWithErrorAndResult:^(BOOL error, NSDictionary *response) {
        if (error) {
            NSLog(@"get API from Restful ERROR ");
        } else {
            NSLog(@"get API from Restful SUCCESS. Result: %@", response);
        }
    }];
    
    
}

- (void)postRestful {
//    NSString  *urlString = @"http://echo.jsontest.com/version/0.0.1/user/master/role/admin/method/get";
    NSString *urlString = @"https://jsonplaceholder.typicode.com/posts";
    NSMutableDictionary *params = [NSMutableDictionary new];
    [params setObject:@"afnetworking" forKey:@"user"];
    [params setObject:@"test" forKey:@"role"];
    [params setObject:@"post" forKey:@"method"];
    
    [Restful postApiWithUrlString:urlString andParams:params completeWithErrorAndResult:^(BOOL error, NSDictionary *response) {
        if (error) {
            NSLog(@"post API from Restful ERROR ");
        } else {
            NSLog(@"post API from Restful SUCCESS. Result: %@", response);
        }
    }];
    
    
}

- (void)testRequestApi {
    NSString *urlString = @"http://echo.jsontest.com/version/0.0.1/user/master/method/get";
    
    [Restful handleApiWithUrlString:urlString completionWithError:^(BOOL error) {
        if (error) {
            NSLog(@"Test request API Error");
        } else {
            NSLog(@"Test request API Success");
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
