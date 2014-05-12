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
@property (strong, nonatomic) IBOutlet UILabel *lblStartDate;
@property (strong, nonatomic) IBOutlet UILabel *lblEndDate;
@property (strong, nonatomic) IBOutlet UILabel *lblVenue;
@property (strong, nonatomic) IBOutlet UITextView *lblDescription;

@property (nonatomic, strong) Event *event;

-(IBAction)btnClose:(id)sender;

@end
