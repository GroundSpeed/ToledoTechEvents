//
//  VenuesDetailViewController.m
//  Toledo Tech
//
//  Created by Don Miller on 5/30/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import "VenuesDetailViewController.h"
#import "Constants.h"
#import <Parse/Parse.h>

@interface VenuesDetailViewController ()
{
    CLLocationCoordinate2D *_coordinates;
}
@end

@implementation VenuesDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _lblTitle.text = _venue.title;
    _lblSubTitle.text = _venue.street_address;

    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = [_venue.latitude doubleValue];
    zoomLocation.longitude= [_venue.longitude doubleValue];
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.3*METERS_PER_MILE, 0.3*METERS_PER_MILE);
    [self.mapView setRegion:viewRegion animated:YES];
    
    // Add an annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    
    double latitude = [_venue.latitude doubleValue];
    double longitude = [_venue.longitude doubleValue];
    CLLocationCoordinate2D coord = {.latitude = latitude, .longitude = longitude};
    point.coordinate = coord;
    point.title = _venue.title;
    
    [self.mapView addAnnotation:point];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)formatDetailView
{
    _lblTitle.backgroundColor = kBlueColor;
    _lblTitle.textColor = kGreenColor;
    _lblSubTitle.backgroundColor = kBlueColor;
    _lblSubTitle.textColor = kGreenColor;
    _btnClose.backgroundColor = kGreenColor;
    _btnClose.tintColor = kBlueColor;
    _vuVenuesDetail.backgroundColor = kBlueColor;
    _vuVenuesDetail.tintColor = kGreenColor;
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [PFAnalytics trackEvent:@"Read" dimensions:@{@"Category": @"Venue Details"}];
    self.mapView.delegate = self;
    [self formatDetailView];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (IBAction)btnClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
