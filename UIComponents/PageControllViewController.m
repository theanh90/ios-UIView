//
//  PageControllViewController.m
//  UIComponents
//
//  Created by Master on 4/14/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import "PageControllViewController.h"
#import "SubPageCtrViewController.h"

@interface PageControllViewController ()

@end

@implementation PageControllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // call pageViewController and set this view to current view
    self.pageController = [[UIPageViewController alloc]initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll
                                                         navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal
                                                                       options:nil];
    [self.pageController setDataSource:self];
    SubPageCtrViewController *subView = [self getSubPageWithIndex:1 andParentView:self];
    NSArray *viewController = [NSArray arrayWithObject:subView];
    
    [self.pageController setViewControllers:viewController
                                  direction:UIPageViewControllerNavigationDirectionForward
                                   animated:YES
                                 completion:nil];
    // ???
//    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
//    [self.pageController didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    SubPageCtrViewController *currPage = (SubPageCtrViewController *)viewController;
    NSInteger index = [currPage index];
    if (index == 5) {
        return nil;
    }
    
    // increase index point to next page
    index++;
    return [self getSubPageWithIndex:index andParentView:self];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    SubPageCtrViewController *currPage = (SubPageCtrViewController *)viewController;
    NSInteger index = [currPage index];
    if (index == 1) {
        return nil;
    }
    
    // increase index point to next page
    index--;
    return [self getSubPageWithIndex:index andParentView:self];
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return 5;
}


- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}


- (SubPageCtrViewController *)getSubPageWithIndex:(NSInteger)index andParentView:(PageControllViewController *)parent {
    SubPageCtrViewController *sub = [[SubPageCtrViewController alloc] initWithNibName:@"SubPageCtrViewController" bundle:nil];
    [sub setIndex:index];
    [sub setParentView:parent];
    return sub;
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
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
