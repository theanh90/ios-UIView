//
//  LoginFaceViewController.m
//  UIComponents
//
//  Created by Master on 4/20/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import "LoginFaceViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import "Google/Analytics.h"

@interface LoginFaceViewController ()

@end

@implementation LoginFaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Facebook and Google";
    
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    // Optional: Place the button in the center of your view.
    loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];
    
    loginButton.readPermissions = @[@"public_profile", @"email", @"user_friends"];
    
    if ([FBSDKAccessToken currentAccessToken]) {
        // User is logged in, do work such as go to next view controller.
        NSLog(@"User has login already");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // For Google Analytics
    NSString *name = [NSString stringWithFormat:@"Pattern~%@", self.title];
    
    // The UA-XXXXX-Y tracker ID is loaded automatically from the
    // GoogleService-Info.plist by the `GGLContext` in the AppDelegate.
    // If you're copying this to an app just using Analytics, you'll
    // need to configure your tracking ID here.
    // [START screen_view_hit_objc]
    id<GAITracker> tracker = [GAI sharedInstance].defaultTracker;
    [tracker set:kGAIScreenName value:name];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
    // [END screen_view_hit_objc]
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
