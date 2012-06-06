//
//  ViewController.m
//  Map View
//
//  Created by syue yuan lai on 12/5/2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mapView = mapView_, segmented = segmented_;

-(IBAction)showLocation:(id)sender
{
    self.mapView.showsUserLocation = YES;
}
-(IBAction)changeMapType:(id)sender
{
    NSInteger segmentedNum;
    
    segmentedNum = self.segmented.selectedSegmentIndex;
    
    switch (segmentedNum) {
        case 0:
            self.mapView.mapType = MKMapTypeStandard;
            break;
        case 1:
            self.mapView.mapType = MKMapTypeSatellite;
            break;
        
        case 2:
            self.mapView.mapType = MKMapTypeHybrid;
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
