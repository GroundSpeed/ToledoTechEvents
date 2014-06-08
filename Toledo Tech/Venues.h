//
//  Venues.h
//  Toledo Tech
//
//  Created by Don Miller on 5/19/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Venues : NSObject

@property(nonatomic, strong) NSString *access_notes;
@property(nonatomic, strong) NSString *address;
@property(nonatomic, strong) NSString *description;
@property(nonatomic, strong) NSString *email;
@property(nonatomic, strong) NSNumber *events_count;
@property(nonatomic, strong) NSNumber *id;
@property(nonatomic, strong) NSNumber *latitude;
@property(nonatomic, strong) NSString *locality;
@property(nonatomic, strong) NSNumber *longitude;
@property(nonatomic, strong) NSString *postal_code;
@property(nonatomic, strong) NSString *region;
@property(nonatomic, strong) NSNumber *source_id;
@property(nonatomic, strong) NSString *street_address;
@property(nonatomic, strong) NSString *telephone;
@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *updated_at;
@property(nonatomic, strong) NSString *url;
@property(nonatomic, strong) NSString *wifi;

@end
