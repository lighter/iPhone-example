//
//  ViewController.m
//  Web Browser
//
//  Created by syue yuan lai on 12/4/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webView = webView_, urlTextField = urlTextField_, activityView = activityView_;

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

-(IBAction)goforward:(id)sender
{
    [self.webView goForward];
}

-(IBAction)goback:(id)sender
{
    [self.webView goBack];
}

-(IBAction)goaddress:(id)sender
{
    NSString *urlString;
    urlString = [self.urlTextField text];
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
    
    [urlTextField_ resignFirstResponder];
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
