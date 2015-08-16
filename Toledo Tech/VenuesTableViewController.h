//
//  VenuesTableViewController.h
//  Toledo Tech
//
//  Created by Don Miller on 5/30/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"
#import "Venues.h"
#import "VenuesDetailViewController.h"

@interface VenuesTableViewController : UITableViewController

@property (nonatomic, strong) VenuesDetailViewController *detailViewController;

@end
