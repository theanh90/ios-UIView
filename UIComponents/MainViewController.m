//
//  MainViewController.m
//  UIComponents
//
//  Created by Master on 4/12/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import "MainViewController.h"
#import "SliderViewController.h"
#import "SwitchViewController.h"
#import "CollectionViewController.h"
#import "PageControllViewController.h"
#import "ProgressViewController.h"
#import "AFNetworkingViewController.h"
#import "SimpleGameViewController.h"

@interface MainViewController ()

@end


@implementation MainViewController

// const for selected component
const int SELECTED_SLIDER = 0;
const int SELECTED_SWITCH = 1;
const int SELECTED_PROGRESSVIEW = 2;
const int SELECTED_PAGE_CONTROLL = 3;
const int SELECTED_AFNETWORKING = 4;
const int SELECTED_SIMPLEGAME = 5;
const int SELECTED_COLLECTION_VIEW = 6;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // set view's title for nav
    [self setTitle:@"List UI"];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableData = [NSArray arrayWithObjects:@"Slider", @"Switch & Activity", @"Progress View", @"Page control", @"AFNetworking", @"Simple Game", @"Collection View", nil];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger selected = indexPath.row;
    switch (selected) {
        case SELECTED_SLIDER: {
            SliderViewController *sliderView = [[SliderViewController alloc]initWithNibName:@"SliderViewController" bundle:nil];
            [self.navigationController pushViewController:sliderView animated:YES];
            break;
        }
        case SELECTED_SWITCH: {
            SwitchViewController *switchView = [[SwitchViewController alloc]initWithNibName:@"SwitchViewController" bundle:nil];
            [self.navigationController pushViewController:switchView animated:YES];
            break;
        }
        case SELECTED_PROGRESSVIEW: {
            ProgressViewController *progress = [[ProgressViewController alloc] initWithNibName:@"ProgressViewController" bundle:nil];
            [self.navigationController pushViewController:progress animated:YES];
            break;
        }
        case SELECTED_PAGE_CONTROLL: {
            PageControllViewController *pageView = [[PageControllViewController alloc] initWithNibName:@"PageControllViewController" bundle:nil];
            [self presentViewController:pageView animated:YES completion:^{
                NSLog(@"TEST BLOCK");
            }];
            break;
        }
        case SELECTED_AFNETWORKING: {
            AFNetworkingViewController *view = [[AFNetworkingViewController alloc] initWithNibName:@"AFNetworkingViewController" bundle:nil];
            [self.navigationController pushViewController:view animated:YES];
            break;
        }
        case SELECTED_SIMPLEGAME: {
            SimpleGameViewController *view = [[SimpleGameViewController alloc] initWithNibName:@"SimpleGameViewController" bundle:nil];
            [self.navigationController pushViewController:view animated:YES];
            break;
        }
        case SELECTED_COLLECTION_VIEW: {
            CollectionViewController *collecView = [[CollectionViewController alloc] initWithNibName:@"CollectionViewController" bundle:nil];
            [self.navigationController pushViewController:collecView animated:YES];
            break;
        }
            
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIndent = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndent];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndent];
    }
    
    cell.textLabel.text = self.tableData[indexPath.row];
    
    return cell;
}

- (NSInteger)addNumberOne:(NSInteger)first andNumberTwo:(NSInteger)second {
    return first + second;
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
