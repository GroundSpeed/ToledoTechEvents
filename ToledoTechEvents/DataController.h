//
//  InterestRates.h
//  Pay Calc
//
//  Created by Don Miller on 5/19/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

@class Events;

@interface DataController : NSObject

@property (nonatomic, strong) NSDictionary *eventsDictionary;
@property (nonatomic, strong) NSDictionary *venuesDictionary;

-(NSDictionary *)getEvents;
-(NSDictionary *)getVenues;

@end
