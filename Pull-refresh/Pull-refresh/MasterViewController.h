//
//  MasterViewController.h
//  Pull-refresh
//
//  Created by lighter on 13/1/10.
//  Copyright (c) 2013年 lighter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PullToRefreshView.h"

@interface MasterViewController : UITableViewController<PullToRefreshViewDelegate>
@property (strong, nonatomic) NSMutableArray *json_array;
@property (strong, nonatomic) PullToRefreshView *pull;
@end
