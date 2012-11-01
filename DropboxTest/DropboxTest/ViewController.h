//
//  ViewController.h
//  DropboxTest
//
//  Created by lighter on 12/11/1.
//  Copyright (c) 2012年 lighter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DropboxSDK/DropboxSDK.h>

@interface ViewController : UIViewController<DBRestClientDelegate>
{
  DBRestClient *restClient;
}
- (IBAction)loginDropbox:(id)sender;
- (IBAction)upload:(id)sender;
- (IBAction)creatFile:(id)sender;

@end
