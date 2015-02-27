//
//  RESTableViewController.h
//  RESAssignment4
//
//  Created by Robert Slatkin on 2/24/15.
//  Copyright (c) 2015 Robert Slatkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RESTableViewController : UITableViewController //UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *urlArray;

@property (nonatomic, weak) NSMutableString *selectedItem;

//@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end
