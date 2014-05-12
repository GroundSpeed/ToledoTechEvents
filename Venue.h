//
//  Venues.h
//  Calagator
//
//  Created by Don Miller on 7/7/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@protocol Venue @end

@interface Venue : JSONModel

@property(nonatomic,retain) NSString *access_notes;
@property(nonatomic,retain) NSString *address;
@property(nonatomic,retain) NSString *closed;
@property(nonatomic,retain) NSString *country;
@property(nonatomic,retain) NSString *created_at;
@property(nonatomic,retain) NSString *description;
@property(nonatomic,retain) NSString *duplicate_of_id;
@property(nonatomic,retain) NSString *email;
@property(nonatomic,retain) NSNumber *events_count;
@property(nonatomic,retain) NSNumber *id;
@property(nonatomic,retain) NSString *latitude;
@property(nonatomic,retain) NSString *locality;
@property(nonatomic,retain) NSString *longitude;
@property(nonatomic,retain) NSString *postal_code;
@property(nonatomic,retain) NSString *region;
@property(nonatomic,retain) NSNumber *source_id;
@property(nonatomic,retain) NSString *street_address;
@property(nonatomic,retain) NSString *telephone;
@property(nonatomic,retain) NSString *title;
@property(nonatomic,retain) NSString *updated_at;
@property(nonatomic,retain) NSString *url;
@property(nonatomic,retain) NSString *wifi;

@end
