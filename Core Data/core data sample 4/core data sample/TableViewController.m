//
//  TableViewController.m
//  core data sample
//
//  Created by syue yuan lai on 12/4/15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TableViewController.h"
#import "DetailViewController.h"
#import "Phone.h"
#import "ContactDetailViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
@synthesize context, arr;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated
{
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Phone" inManagedObjectContext:context];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    
    [request setFetchBatchSize:20];
    
    [request setEntity:entity];
    
    NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
    
    NSArray *newArray = [NSArray arrayWithObject:sort];
    
    [request setSortDescriptors:newArray];
    
    NSError *error;
    
    NSMutableArray *results = [[context executeFetchRequest:request error:&error] mutableCopy];
    
    [self setArr:results];
    
    [self.tableView reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add)];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(delete)];

}

-(void)add
{
    DetailViewController *detail = [[DetailViewController alloc] init];
    
    [self.navigationController presentModalViewController:detail animated:YES];
}

-(void) delete
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Phone" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    
    NSError *error;
    NSArray *items = [context executeFetchRequest:fetchRequest error:&error];
    
    for (NSManagedObject *managedObject in items) {
        [context deleteObject:managedObject];
    }
    if (![context save:&error]) {
        
    }
    [self.tableView reloadData];
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [arr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    
    Phone *phone = [arr objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [phone name];
    cell.detailTextLabel.text = [phone.number stringValue];
    
    // Configure the cell...
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ContactDetailViewController *contact = [[ContactDetailViewController alloc] initWithNibName:@"ContactDetailViewController" bundle:[NSBundle mainBundle]];

    contact.context = context;
    
    Phone *phone = [arr objectAtIndex:indexPath.row];
    
    contact.phone = phone;
    
    [self.navigationController pushViewController:contact animated:YES];
    
}

@end
