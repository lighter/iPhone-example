//
//  ViewController.m
//  Action Sheets
//
//  Created by syue yuan lai on 12/4/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(IBAction)showActionSheet:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Share Save" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Save" otherButtonTitles:@"Email", @"Facebook", @"Twitter", @"Plurk", nil];

    actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
    [actionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Save");
            break;
        case 1:
            NSLog(@"Email");
            break;
        case 2:
            NSLog(@"Facebook");
            break;
        case 3:
            NSLog(@"Twitter");
            break;
        case 4:
            NSLog(@"Plurk");
            break;
        default:
            break;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
