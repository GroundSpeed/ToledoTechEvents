//
//  Annotation.h
//  Toledo Tech
//
//  Created by Don Miller on 5/31/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Annotation : NSObject

@property (strong, nonatomic) NSString *title;
@property (nonatomic,assign) CLLocationCoordinate2D coordinate;

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title;

@end