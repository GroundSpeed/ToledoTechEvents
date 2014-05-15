//
//  CALEventsTableViewController.m
//  Calagator
//
//  Created by Don Miller on 7/6/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import "CALEventsTableViewController.h"

@implementation CALEventsTableViewController

- (void)viewDidAppear:(BOOL)animated
{
    [self loadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadData];
}

- (void)loadData
{
    [JSONHTTPClient getJSONFromURLWithString:kEventsURL
                                      params:nil
                                  completion:^(id json, JSONModelError *err) {
                                      
                                      _eventList = [Event arrayOfModelsFromDictionaries:json];
                                      
                                      //json fetched
                                      [self.tableView reloadData];
                                      
                                  }];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _eventList.count;
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

-(UITableViewCell*)tableView:(UITableView *)tableView
       cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Event *event = _eventList[indexPath.row];
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    UILabel *lblTitle = (UILabel *)[cell viewWithTag:1];
    lblTitle.text = event.title;
    
    UILabel *lblDate = (UILabel *)[cell viewWithTag:2];
    lblDate.text = [NSString stringWithFormat:@"%@", [self formatDateString:event.start_time]];
    
    tableView.separatorColor = kGreenColor;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"eventDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        [_detailViewController setEvent:_eventList[indexPath.row]];
        Event *event = _eventList[indexPath.row];
        [[segue destinationViewController] setEvent:event];
    }
}


@end
