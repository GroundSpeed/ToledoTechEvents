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
    [self setNeedsStatusBarAppearanceUpdate];
    [self loadData];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
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

-(UITableViewCell*)tableView:(UITableView *)tableView
       cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Event *event = _eventList[indexPath.row];
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    UILabel *lblTitle = (UILabel *)[cell viewWithTag:1];
    lblTitle.text = event.title;
    
    UILabel *lblDate = (UILabel *)[cell viewWithTag:2];
    lblDate.text = [NSString stringWithFormat:@"%@", [GlobalFunctions formatDateString:event.start_time]];
    
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
