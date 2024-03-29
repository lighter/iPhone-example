//
//  DetailViewController.m
//  core data sample
//
//  Created by syue yuan lai on 12/4/15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "Phone.h"
@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize app;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
        UINavigationItem *navItem = [[UINavigationItem alloc] initWithTitle:@"Add Detail"];
        [navBar pushNavigationItem:navItem animated:NO];
        
        UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonSystemItemCancel target:self action:@selector(cancel)];
        UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStyleBordered target:self action:@selector(add)];
        
        navItem.leftBarButtonItem = cancelButton;
        navItem.rightBarButtonItem = addButton;
        
        [self.view addSubview:navBar];
        
        app = [[UIApplication sharedApplication] delegate];
        
    }
    return self;
}

-(void) add
{
    NSManagedObjectContext *context = [app managedObjectContext];

    Phone *phone = [NSEntityDescription insertNewObjectForEntityForName:@"Phone" inManagedObjectContext:context];
    
    if (nameText.text.length <= 0 || numberText.text.length <= 0) {
        NSLog(@"Nope");
    }
    else {
        phone.name = nameText.text;
        phone.number = [NSNumber numberWithInt:[numberText.text intValue]];
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"Test" object:self];
        
        [self dismissModalViewControllerAnimated:YES];
    }
    
    NSError *error;
    
    if (![context save:&error]) {
        NSLog(@"Woops");
    }
    
}

-(void) cancel
{
    [self dismissModalViewControllerAnimated:YES];
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
