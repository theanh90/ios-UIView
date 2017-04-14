//
//  SubPageCtrViewController.h
//  UIComponents
//
//  Created by Master on 4/14/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "PageControllViewController.h"

@interface SubPageCtrViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *screenNum;
@property (assign, nonatomic) NSInteger index;
@property (strong, nonatomic) PageControllViewController *parentView;

- (IBAction)dismissView:(id)sender;

@end
