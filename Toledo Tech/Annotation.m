//
//  Annotation.m
//  Toledo Tech
//
//  Created by Don Miller on 5/31/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import "Annotation.h"

@implementation Annotation

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title {
    if ((self = [super init])) {
        self.coordinate =coordinate;
        self.title = title;
    }
    return self;
}

@end
