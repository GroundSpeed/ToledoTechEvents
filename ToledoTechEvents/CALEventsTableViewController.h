//
//  CALEventsTableViewController.h
//  Calagator
//
//  Created by Don Miller on 7/6/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CALEventsDetailViewController.h"
#import "JSONModelLib.h"
#import "Constants.h"

@interface CALEventsTableViewController : UITableViewController
{
    NSMutableArray *_eventList;
}

@property (nonatomic, strong) CALEventsDetailViewController *detailViewController;

- (void)loadData;
- (NSString *)formatDateString:(NSString *)dateWithInitialFormat;


@end
