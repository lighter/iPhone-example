//
//  AddViewController.m
//  core data
//
//  Created by lighter on 12/11/3.
//  Copyright (c) 2012年 lighter. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController
@synthesize name, email, phone, address, app;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
  app = [[UIApplication sharedApplication] delegate];
  NSManagedObjectContext *context = [app managedObjectContext];

  UserInfo *info = [NSEntityDescription insertNewObjectForEntityForName:@"UserInfo" inManagedObjectContext:context];
  info.name = name.text;

  UserDetail *detail = [NSEntityDescription insertNewObjectForEntityForName:@"UserDetail" inManagedObjectContext:context];
  detail.address = address.text;
  detail.email = email.text;
  detail.phone = phone.text;
  info.detail = detail;

  NSError *error;
  if (![context save:&error]) {
    NSLog(@"Save Error : %@", [error localizedDescription]);
  } else {
    [self.navigationController popViewControllerAnimated:YES];
  }
}
@end
