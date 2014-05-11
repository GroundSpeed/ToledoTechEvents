//
//  Events.h
//  Calagator
//
//  Created by Don Miller on 7/7/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property(nonatomic) NSInteger EventId;
@property(nonatomic, strong) NSString * Description;
@property(nonatomic, strong) NSString * DuplicateId;
@property(nonatomic, strong) NSString * EndTime;
@property(nonatomic, strong) NSString * RRule;
@property(nonatomic, strong) NSString * RsvpUrl;
@property(nonatomic, strong) NSNumber * SourceId;
@property(nonatomic, strong) NSString * StartTime;
@property(nonatomic, strong) NSString * Title;
@property(nonatomic, strong) NSString * UpdatedAt;
@property(nonatomic, strong) NSString * Url;
@property(nonatomic, strong) NSString * VenueDetails;
@property(nonatomic, strong) NSString * CreatedAt;
@property(nonatomic, strong) NSNumber * VenueId;

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
           WithVenueId: (NSNumber *) pVenueId;

@end
