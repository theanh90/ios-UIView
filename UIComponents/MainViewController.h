//
//  MainViewController.h
//  UIComponents
//
//  Created by Master on 4/12/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property NSArray *tableData;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end


