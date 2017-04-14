//
//  PageControllViewController.h
//  UIComponents
//
//  Created by Master on 4/14/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageControllViewController : UIViewController <UIPageViewControllerDataSource>
- (IBAction)dismissView:(id)sender;

@property (strong, nonatomic) UIPageViewController *pageController;

@end
