//
//  CALEventsDetailViewController.m
//  Calagator
//
//  Created by Don Miller on 7/7/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import "CALEventsDetailViewController.h"
#import "Event.h"

@implementation CALEventsDetailViewController

- (void)viewWillAppear:(BOOL)animated
{
    _lblTitle.text = _event.title;
    _lblStartDate.text = [self formatDateString:_event.start_time];
    _lblEndDate.text = [self formatDateString:_event.end_time];
    _lblDescription.text = _event.description;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
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

- (NSString *)formatDateString:(NSString *)dateWithInitialFormat
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    NSDate *date = [dateFormatter dateFromString:dateWithInitialFormat];
    
    [dateFormatter setDateFormat:@"MM/dd/yyyy EEEE hh:mm a"];
    NSString *dateWithNewFormat = [dateFormatter stringFromDate:date];
    return dateWithNewFormat;
}


@end
