//
//  ViewController.h
//  Image View
//
//  Created by syue yuan lai on 12/4/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIImageView *imageView_;
    NSInteger currentImage;
}
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
-(IBAction)switchImage:(id)sender;
@end
