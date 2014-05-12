//
//  ToledoTechEventsTests.m
//  ToledoTechEventsTests
//
//  Created by Don Miller on 5/4/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface ToledoTechEventsTests : XCTestCase

@end

@implementation ToledoTechEventsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
//    EventList _eventList = [[EventList alloc] initFromURLWithString:@"http://toledotechevents.org/events.json"
//                                               completion:^(JSONModel *model, JSONModelError *err) {
//                                                   
//                                                   NSLog(@"%@", err);
//                                                   //json fetched
//                                                   NSLog(@"events: %@", _eventList.events);
//                                               }];
//    XCTAssertTrue(_eventList.events.count > 0);
    XCTAssertTrue(1==1);
    
}

@end
