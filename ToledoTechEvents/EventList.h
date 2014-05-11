//
//  EventList.h
//  ToledoTechEvents
//
//  Created by Don Miller on 5/10/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Event.h"

@interface EventList : NSObject

@property (nonatomic, strong) NSArray<Event> *events;

@end
