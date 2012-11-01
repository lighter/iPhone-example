//
//  ViewController.m
//  DropboxTest
//
//  Created by lighter on 12/11/1.
//  Copyright (c) 2012年 lighter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginDropbox:(id)sender {

  if (![[DBSession sharedSession] isLinked]) {
    [[DBSession sharedSession] linkFromController:self];
  } else {
    NSLog(@"linked");
  }
}

- (IBAction)upload:(id)sender {

  NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
  NSString *path = [[paths objectAtIndex:0]stringByAppendingPathComponent:@"file1.txt"];;
  NSString *pathString = @"/";
  [self.restClient uploadFile:@"file1.txt" toPath:pathString fromPath:path];

}

- (IBAction)creatFile:(id)sender {
  NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
  NSString *path = [[paths objectAtIndex:0]stringByAppendingPathComponent:@"file1.txt"];;

  // String to write
  NSString *str = @"iPhone Developer Tips\nhttp://iPhoneDevelopTips,com";
  NSError *error;
  // Write the file
  [str writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error];

  NSFileManager *filemgr;

  filemgr = [NSFileManager defaultManager];

  if ([filemgr fileExistsAtPath: path ] == YES)
    NSLog (@"File exists");
  else
    NSLog (@"File not found");

}

- (DBRestClient *)restClient {
  if (!restClient) {
    restClient =
    [[DBRestClient alloc] initWithSession:[DBSession sharedSession]];
    restClient.delegate = self;
  }
  return restClient;
}

@end
