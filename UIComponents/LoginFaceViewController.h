//
//  LoginFaceViewController.h
//  UIComponents
//
//  Created by Master on 4/20/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface LoginFaceViewController : UIViewController

@property (weak, nonatomic) IBOutlet FBSDKLoginButton *loginButton;

@end
