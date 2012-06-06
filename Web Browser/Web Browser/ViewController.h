//
//  ViewController.h
//  Web Browser
//
//  Created by syue yuan lai on 12/4/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
{
    UIWebView *webView_;
    UITextField *urlTextField_;
    UIActivityIndicatorView *activityView_;
}

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UITextField *urlTextField;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityView;

-(IBAction)goforward:(id)sender; //往下頁
-(IBAction)goback:(id)sender;    //往上頁
-(IBAction)goaddress:(id)sender; //往目前的網址
-(IBAction)hitReturn:(id)sender; //點選鍵盤的return的觸發事件

@end
