//
//  CALEventsTableViewController.h
//  Calagator
//
//  Created by Don Miller on 7/6/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import "CALEventsDetailViewController.h"

@class DataController;

@interface CALEventsTableViewController : UITableViewController
{
    NSDictionary *_dictEvents;
    NSMutableArray *_arrayEvents;
    NSMutableArray *_arrayEventDates;
}

@property (nonatomic, strong) CALEventsDetailViewController *detailViewController;

//@property (nonatomic, strong) IBOutlet UILabel *lblTitle;
//@property (nonatomic, strong) IBOutlet UILabel *lblDate;

@end
