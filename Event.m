//
//  Events.m
//  Calagator
//
//  Created by Don Miller on 7/7/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import "Event.h"

@implementation Event

+(JSONKeyMapper*)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"description":@"desc",
                                                       @"venue_id":@"venue"
                                                       }];
}

@end
