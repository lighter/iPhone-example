//
//  ViewController.m
//  Core Image
//
//  Created by lighter on 12/11/6.
//  Copyright (c) 2012年 lighter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *img = [UIImage imageNamed:@"test.jpg"];
    imageView.image = img;

    inputImage = [[CIImage alloc] initWithImage:[UIImage imageNamed:@"test.jpg"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)filter1:(id)sender {
    inputImage = [[CIImage alloc] initWithImage:[UIImage imageNamed:@"test.jpg"]];
    context = [CIContext contextWithOptions:nil];
    filter = [CIFilter filterWithName:@"CISepiaTone" keysAndValues:kCIInputImageKey, inputImage, @"inputIntensity", [NSNumber numberWithFloat:0.8], nil];
    outputImage = [filter outputImage];
    imageView.image = [UIImage imageWithCGImage:[context createCGImage:outputImage fromRect:outputImage.extent]];
    
}
- (IBAction)filter2:(id)sender {
    //1
    inputImage = [[CIImage alloc] initWithImage:[UIImage imageNamed:@"test.jpg"]];

    //2
    context = [CIContext contextWithOptions:nil];

    //3
    filter = [CIFilter filterWithName:@"CIColorPosterize"];
    [filter setValue:inputImage forKey:@"inputImage"];
    [filter setValue:[NSNumber numberWithFloat:3.0] forKey:@"inputLevels"];

    //4
    outputImage = [filter outputImage];
    imageView.image = [UIImage imageWithCGImage:[context createCGImage:outputImage fromRect:outputImage.extent]];
}
- (IBAction)filter3:(id)sender {
}

@end
