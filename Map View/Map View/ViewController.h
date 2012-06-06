//
//  ViewController.h
//  Map View
//
//  Created by syue yuan lai on 12/5/2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController
{
    MKMapView *mapView_;
    UISegmentedControl *segmented_;
}

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmented;

-(IBAction)showLocation:(id)sender;
-(IBAction)changeMapType:(id)sender;

@end
