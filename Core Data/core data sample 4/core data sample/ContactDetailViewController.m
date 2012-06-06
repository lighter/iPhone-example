//
//  ContactDetailViewController.m
//  core data sample
//
//  Created by syue yuan lai on 12/4/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ContactDetailViewController.h"

@interface ContactDetailViewController ()

@end

@implementation ContactDetailViewController
@synthesize nameText, numberText, phone, context;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void) close
{
    [numberText resignFirstResponder];
    [nameText resignFirstResponder];
}

-(IBAction)save:(id)sender
{
    [phone setValue:nameText.text forKey:@"name"];
    [phone setValue:[NSNumber numberWithInteger:[[numberText text] integerValue]] forKey:@"number"];
    
    [self close];
}

-(void) viewWillAppear:(BOOL)animated
{
    self.title = phone.name;
    nameText.text = phone.name;
    numberText.text = [phone.number stringValue];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
