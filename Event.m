//
//  Events.m
//  Calagator
//
//  Created by Don Miller on 7/7/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import "Event.h"

@implementation Event

-(id)  initWithEventId: (NSInteger) pEventId
       WithDescription: (NSString *) pDescription
       WithDuplicateId: (NSString *) pDuplicateId
           WithEndTime: (NSString *) pEndTime
             WithRRule: (NSString *) pRRule
           WithRsvpUrl: (NSString *) pRsvpUrl
          WithSourceId: (NSNumber *) pSourceId
         WithStartTime: (NSString *) pStartTime
             WithTitle: (NSString *) pTitle
         WithUpdatedAt: (NSString *) pUpdatedAt
               WithUrl: (NSString *) pUrl
      WithVenueDetails: (NSString *) pVenueDetails
         WithCreatedAt: (NSString *) pCreatedAt
           WithVenueId: (NSNumber *) pVenueId
{
    if ((self=[super init]))
    {
        _EventId = pEventId;
        _Description = pDescription;
        _DuplicateId = pDuplicateId;
        _EndTime = pEndTime;
        _RRule = pRRule;
        _RsvpUrl = pRsvpUrl;
        _SourceId = pSourceId;
        _StartTime = pStartTime;
        _Title = pTitle;
        _UpdatedAt = pUpdatedAt;
        _Url = pUrl;
        _VenueDetails = pVenueDetails;
        _CreatedAt = pCreatedAt;
        _VenueId = pVenueId;
        
        
        return self;
    }
    else
    {
        return nil;
    }
}

@end
