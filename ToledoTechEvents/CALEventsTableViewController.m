//
//  CALEventsTableViewController.m
//  Calagator
//
//  Created by Don Miller on 7/6/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import "CALEventsTableViewController.h"
#import "CALEventsDetailViewController.h"
#import "DataController.h"
#import "Constants.h"

@implementation CALEventsTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    DataController *events = [[DataController alloc] init];
    _dictEvents = [events getEvents];
    _arrayEvents = [_dictEvents valueForKey:@"title"];
    _arrayEventDates = [_dictEvents valueForKey:@"start_time"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_arrayEvents count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSString *dateWithInitialFormat = [_arrayEventDates objectAtIndex:indexPath.row];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    NSDate *date = [dateFormatter dateFromString:dateWithInitialFormat];
    
    [dateFormatter setDateFormat:@"MM/dd/yyyy EEEE hh:mm a"];
    NSString *dateWithNewFormat = [dateFormatter stringFromDate:date];
    
    UILabel *lblTitle = (UILabel *)[cell viewWithTag:1];
    lblTitle.text = [_arrayEvents objectAtIndex:indexPath.row];
    
    UILabel *lblDate = (UILabel *)[cell viewWithTag:2];
    lblDate.text = [NSString stringWithFormat:@"%@", dateWithNewFormat];
    
    tableView.separatorColor = kGreenColor;
    
    //_detailViewController setEvent:<#(Events *)#>
    
    //[_arrayEventDates objectAtIndex:indexPath.row]
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//     = [self.someArray objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"eventDetail" sender:self];
}



@end
