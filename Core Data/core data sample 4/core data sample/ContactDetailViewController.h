//
//  ContactDetailViewController.h
//  core data sample
//
//  Created by syue yuan lai on 12/4/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Phone.h"

@interface ContactDetailViewController : UIViewController


@property (nonatomic, retain) IBOutlet  UITextField *nameText;
@property (nonatomic, retain) IBOutlet  UITextField *numberText;
@property (nonatomic, retain) Phone *phone;
@property (nonatomic, retain) NSManagedObjectContext *context;


-(IBAction)save:(id)sender;

@end
