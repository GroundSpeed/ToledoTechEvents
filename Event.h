//
//  Events.h
//  Calagator
//
//  Created by Don Miller on 7/7/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import "JSONModel.h"
#import "Venue.h"

@protocol Event @end

@interface Event : JSONModel

@property (nonatomic,retain) NSString *description;
@property (nonatomic,retain) NSString *end_time;
@property (nonatomic,retain) NSNumber *id;
@property (nonatomic,retain) NSString *rsvp_url;
@property (nonatomic,retain) NSString *start_time;
@property (nonatomic,retain) NSString *title;
@property (nonatomic,retain) NSString *url;
@property (nonatomic,retain) NSString *venue_details;
//@property (nonatomic,assign) NSNumber *venue_id;

//@property (nonatomic,retain) Venue *venue;

@end
