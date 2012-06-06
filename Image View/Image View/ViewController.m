//
//  ViewController.m
//  Image View
//
//  Created by syue yuan lai on 12/4/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;

-(IBAction)switchImage:(id)sender
{
    if(currentImage == 0){
        currentImage = 1;
        imageView.image = [UIImage imageNamed:@"t2.jpg"];
    }
    else {
        currentImage = 0;
        imageView.image = [UIImage imageNamed:@"t1.jpg"];
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    currentImage = 0;
    imageView.image = [UIImage imageNamed:@"t1.jpg"];
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
