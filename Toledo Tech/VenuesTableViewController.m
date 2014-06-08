//
//  VenuesTableViewController.m
//  Toledo Tech
//
//  Created by Don Miller on 5/30/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import "VenuesTableViewController.h"
#import <Parse/Parse.h>

@interface VenuesTableViewController ()
{
    NSMutableArray *arrayVenueModel;
}
@end

@implementation VenuesTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [PFAnalytics trackEvent:@"Read" dimensions:@{@"Category": @"Venues"}];
    [self setNeedsStatusBarAppearanceUpdate];
    arrayVenueModel = [[NSMutableArray alloc] initWithObjects:nil];
    [self parseJSON];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    return [arrayVenueModel count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VenueCell" forIndexPath:indexPath];
    
    Venues *venue = arrayVenueModel[indexPath.row];
    
    cell.textLabel.backgroundColor = kBlueColor;
    cell.textLabel.textColor = kGreenColor;
    cell.textLabel.text = venue.title;
    
    cell.detailTextLabel.backgroundColor = kBlueColor;
    cell.detailTextLabel.textColor = kGreenColor;
    cell.detailTextLabel.text = venue.address;
    
    tableView.backgroundColor = kBlueColor;
    tableView.separatorColor = kGreenColor;
    cell.backgroundColor = kBlueColor;
    
    return cell;
}


-(void)parseJSON
{
    NSError *error = nil;
    NSData *jsonData = [NSData dataWithContentsOfURL:[NSURL URLWithString:kVenuesURL]];
    
    if (jsonData)
    {
        id jsonObjects = [NSJSONSerialization JSONObjectWithData:jsonData
                                                         options:NSJSONReadingMutableContainers
                                                           error:&error];
        
        NSArray *arrayVenues = [[NSArray alloc] initWithArray:jsonObjects];
        
        if (error)
        {
            NSLog(@"error is %@", [error localizedDescription]);
            
            // Handle Error and return
            return;
        }
        
        for (NSDictionary *dictVenue in arrayVenues)
        {
            Venues *venue = [Venues alloc];
            
            venue.title = [dictVenue objectForKey:@"title"];
            venue.address = [dictVenue objectForKey:@"address"];
            venue.street_address = [dictVenue objectForKey:@"street_address"];
            venue.latitude = [dictVenue objectForKey:@"latitude"];
            venue.longitude = [dictVenue objectForKey:@"longitude"];
            venue.locality = [dictVenue objectForKey:@"locality"];
            venue.wifi = [dictVenue objectForKey:@"wifi"];
            venue.url = [dictVenue objectForKey:@"url"];
            
            [arrayVenueModel addObject:venue];
        }
    }
    else
    {
        // Handle Error
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"venueDetail"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        [_detailViewController setVenue:arrayVenueModel[indexPath.row]];
        Venues *venue = arrayVenueModel[indexPath.row];
        [[segue destinationViewController] setVenue:venue];
    }
}

@end
