//
//  TableViewController.h
//  core data sample
//
//  Created by syue yuan lai on 12/4/15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

@property (nonatomic, retain) NSManagedObjectContext *context;
@property (nonatomic, retain) NSMutableArray *arr;
-(void) getData;


@end
