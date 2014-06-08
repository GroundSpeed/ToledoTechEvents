//
//  VenuesDetailViewController.h
//  Toledo Tech
//
//  Created by Don Miller on 5/30/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Event.h"
#import "GlobalFunctions.h"

@interface VenuesDetailViewController : UIViewController <MKMapViewDelegate>

@property (nonatomic, strong) IBOutlet MKMapView *mapView;

@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblSubTitle;
@property (strong, nonatomic) IBOutlet UIButton *btnClose;
@property (strong, nonatomic) IBOutlet UIView *vuVenuesDetail;

@property (nonatomic, strong) Venues *venue;

-(IBAction)btnClose:(id)sender;

@end
