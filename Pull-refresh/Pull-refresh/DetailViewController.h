//
//  DetailViewController.h
//  Pull-refresh
//
//  Created by lighter on 13/1/10.
//  Copyright (c) 2013年 lighter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
