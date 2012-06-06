//
//  ViewController.h
//  Slider View
//
//  Created by syue yuan lai on 12/4/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UISlider *slider_;
    UILabel *label_;
}
@property(strong, nonatomic)IBOutlet UISlider *slider;
@property(strong, nonatomic)IBOutlet UILabel *label;

-(IBAction)setSliderValue:(id)sender;
@end
