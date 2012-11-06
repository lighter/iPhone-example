//
//  DetailViewController.m
//  core data
//
//  Created by lighter on 12/11/3.
//  Copyright (c) 2012年 lighter. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

  if (self.detailItem) {
    self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"name"] description];
    self.detailEmail.text = self.detailItem.detail.email;
    self.detailPhone.text = self.detailItem.detail.phone;
    self.detailAddress.text = self.detailItem.detail.address;
  }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
