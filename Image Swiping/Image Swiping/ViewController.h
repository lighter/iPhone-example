//
//  ViewController.h
//  Image Swiping
//
//  Created by syue yuan lai on 12/4/22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
{
    UIScrollView *scrollView_;
}
@property(strong, nonatomic) IBOutlet UIScrollView *scrollView;
@end
