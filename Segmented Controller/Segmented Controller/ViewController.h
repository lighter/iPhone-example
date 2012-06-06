//
//  ViewController.h
//  Segmented Controller
//
//  Created by syue yuan lai on 12/5/1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
{
    UIWebView *webView_;
    UITextField *urlTextField_;
    UIActivityIndicatorView *activityView_;
    
    UISegmentedControl *segmented_;
}

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UITextField *urlTextField;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityView;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmented;

-(IBAction)hitReturn:(id)sender; //點選鍵盤的return的觸發事件

-(IBAction)hitSegmented:(id)sender;//點選Segmented Controller的事件

@end
