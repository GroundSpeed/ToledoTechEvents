//
//  VenueList.h
//  ToledoTechEvents
//
//  Created by Don Miller on 5/10/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Venue.h"

@interface VenueList : JSONModel

@property (nonatomic, strong) NSArray<Venue> *venues;

@end
