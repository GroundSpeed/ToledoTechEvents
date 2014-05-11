//
//  CALEventsDetailViewController.h
//  Calagator
//
//  Created by Don Miller on 7/7/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import "Event.h"

@interface CALEventsDetailViewController : UIViewController

@property (retain, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblDate;
@property (strong, nonatomic) IBOutlet UILabel *lblVenue;
@property (strong, nonatomic) IBOutlet UILabel *lblDescription;

@property (nonatomic, strong) Event *event;

-(IBAction)btnClose:(id)sender;

@end
