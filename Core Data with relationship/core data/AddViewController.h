//
//  AddViewController.h
//  core data
//
//  Created by lighter on 12/11/3.
//  Copyright (c) 2012年 lighter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "UserInfo.h"
#import "UserDetail.h"

@interface AddViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *phone;
@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UITextField *address;
- (IBAction)save:(id)sender;

@property (strong, nonatomic) AppDelegate *app;
@end
