//
//  ViewController.h
//  Core Image
//
//  Created by lighter on 12/11/6.
//  Copyright (c) 2012年 lighter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    CIContext *context;
    CIFilter *filter;
    CIImage *inputImage;    //輸入的圖片
    CIImage *outputImage;   //輸出濾鏡效果的圖片
}
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)filter1:(id)sender; //濾鏡效果1
- (IBAction)filter2:(id)sender; //濾鏡效果2
- (IBAction)filter3:(id)sender; //濾鏡效果3

@end
