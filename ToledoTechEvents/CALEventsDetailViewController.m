//
//  CALEventsDetailViewController.m
//  Calagator
//
//  Created by Don Miller on 7/7/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import "CALEventsDetailViewController.h"
#import "Event.h"

@interface CALEventsDetailViewController ()

@end

@implementation CALEventsDetailViewController

- (void)viewWillAppear:(BOOL)animated
{
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.lblTitle.text = _event.Title;
    self.lblDate.text = _event.StartTime;
    self.lblVenue.text = _event.VenueDetails;
    self.lblDescription.text = _event.description;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
