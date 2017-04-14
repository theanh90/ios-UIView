//
//  SubPageCtrViewController.m
//  UIComponents
//
//  Created by Master on 4/14/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import "SubPageCtrViewController.h"

@interface SubPageCtrViewController ()

@end

@implementation SubPageCtrViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andParentView:(UIViewController *)parent {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    [self setParentView:(PageControllViewController *)parent];
    return self;
}


- (void)viewWillAppear:(BOOL)animated {
    self.screenNum.text = [NSString stringWithFormat:@"Screen #%d", self.index];
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

- (IBAction)dismissView:(id)sender {
    [self.parentView dismissViewControllerAnimated:YES completion:nil];
}
@end
