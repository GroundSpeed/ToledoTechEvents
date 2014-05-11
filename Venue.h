//
//  Venues.h
//  Calagator
//
//  Created by Don Miller on 7/7/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Venue : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *telephone;
@property (nonatomic, strong) NSString *streetAddress;
@property (nonatomic, strong) NSString *region;
@property (nonatomic, strong) NSString *postalCode;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *url;

@end
