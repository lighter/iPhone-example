//
//  ViewController.m
//  Image Swiping
//
//  Created by syue yuan lai on 12/4/22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrollView = scrollView_;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *photoName = [NSMutableArray arrayWithObjects:@"a2.jpg", @"a3.jpg", @"a4.jpg", @"a5.jpg", nil];
    NSMutableArray *photos = [NSMutableArray arrayWithObjects:
                                [UIImage imageNamed:[photoName objectAtIndex:0]],
                                [UIImage imageNamed:[photoName objectAtIndex:1]],
                                [UIImage imageNamed:[photoName objectAtIndex:2]],
                                [UIImage imageNamed:[photoName objectAtIndex:3]],
                                nil];
    
    int i = 0;
    for(UIImage *image in photos) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.contentMode = UIViewContentModeScaleToFill;
        imageView.clipsToBounds = YES;
        
        imageView.frame = CGRectMake(320*i++,0 ,320, 460);
        
        [self.scrollView addSubview:imageView];
    }
    
    self.scrollView.contentSize = CGSizeMake(320*i, 460);
    scrollView_.delegate = self;
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
