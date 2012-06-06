//
//  Phone.h
//  core data sample
//
//  Created by syue yuan lai on 12/4/12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Phone : NSManagedObject

@property (nonatomic, retain)  NSString * name;
@property (nonatomic, retain) NSNumber * number;

@end
