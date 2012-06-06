//
//  ViewController.m
//  Segmented Controller
//
//  Created by syue yuan lai on 12/5/1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webView = webView_, urlTextField = urlTextField_, activityView = activityView_;

@synthesize segmented = segmented_;

-(IBAction)hitSegmented:(id)sender
{
    NSString *urlString;
    
    NSInteger segmentedNum;
    
    segmentedNum = segmented_.selectedSegmentIndex;
    
    switch (segmentedNum) {
        case 0:
            urlString = @"http://www.google.com";
            break;
        case 1:
            urlString = @"http://www.yahoo.com.tw";
            break;
        case 2:
            urlString = @"http://www.youtube.com.tw";
            break;
        default:
            break;
    }
    self.urlTextField.text = urlString;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
}

-(IBAction)hitReturn:(id)sender
{
    NSString *urlString = [self.urlTextField text];
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
    
    [urlTextField_ resignFirstResponder];
}

-(void) webViewDidStartLoad:(UIWebView *)webView
{
    activityView_.hidden = NO;
    [activityView_ startAnimating];
}

-(void) webViewDidFinishLoad:(UIWebView *)webView
{
    activityView_.hidden = YES;
    [activityView_ stopAnimating];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    webView_.delegate = self;
    
    NSString *urlString = @"http://www.google.com";
    urlString = [self.urlTextField text];
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
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
