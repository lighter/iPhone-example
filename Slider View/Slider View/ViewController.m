//
//  ViewController.m
//  Slider View
//
//  Created by syue yuan lai on 12/4/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize slider = slider_, label = label_;

-(IBAction)setSliderValue:(id)sender
{
    float currentValue;
    currentValue = [self.slider value];
    
    NSString *value = [[NSString alloc] initWithFormat:@"Value is %2.f", currentValue];
    self.label.text = value;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    float currentValue;
    currentValue = [self.slider value];
    
    NSString *value = [[NSString alloc] initWithFormat:@"Value is %2.f", currentValue];
    self.label.text = value;
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
