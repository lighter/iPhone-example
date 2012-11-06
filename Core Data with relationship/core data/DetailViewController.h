//
//  DetailViewController.h
//  core data
//
//  Created by lighter on 12/11/3.
//  Copyright (c) 2012年 lighter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserInfo.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) UserInfo *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailEmail;
@property (strong, nonatomic) IBOutlet UILabel *detailPhone;
@property (strong, nonatomic) IBOutlet UILabel *detailAddress;

@end
