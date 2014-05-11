//
//  Events.m
//  Calagator
//
//  Created by Don Miller on 5/19/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import "DataController.h"
#import "Event.h"

@interface DataController ()
@end

@implementation DataController
static NSString * const kURL = @"http://toledotechevents.org";

-(NSDictionary *)getEvents
{
    // Variable to store our API Key
    NSString *searchURL = [NSString stringWithFormat:@"%@/events.json", kURL];
    
    NSError *error = nil;
    NSData *jsonData = [NSData dataWithContentsOfURL:[NSURL URLWithString:searchURL]];
    
    if (jsonData)
    {
        NSDictionary *dictReturn = [NSJSONSerialization JSONObjectWithData:jsonData
                                                                   options:NSJSONReadingMutableContainers
                                                                     error:&error];
        
        id jsonObjects = [NSJSONSerialization JSONObjectWithData:jsonData
                                                         options:NSJSONReadingMutableContainers
                                                           error:&error];

        NSArray *eventArray = [jsonObjects valueForKey:@"id"];

//        for (id key in dictReturn) {
//            NSLog(@"%@", [dictReturn valueForKey:@"title"]);
//        }
        
        for (id key in jsonObjects)
        {
            NSLog(@"%@", [dictReturn valueForKey:key]);
//            NSDictionary *subDictionary = [dictReturn objectForKey:key];
//            if ([subDictionary objectForKey:@"title"] == @"title")
//                [titles addObject:[subDictionary objectForKey:@"title"]];
            // etc.
        }
        
        if (error)
        {
            NSLog(@"error is %@", [error localizedDescription]);
            
            // Handle Error and return
            return nil;
        }
        
        return dictReturn;
    }
    else
    {
        // Handle Error
        return nil;
    }
}

-(NSDictionary *)getVenues
{
    // Variable to store our API Key
    NSString *searchURL = [NSString stringWithFormat:@"%@/venues.json", kURL];
    
    NSError *error = nil;
    NSData *jsonData = [NSData dataWithContentsOfURL:[NSURL URLWithString:searchURL]];
    
    if (jsonData)
    {
        NSDictionary *dictReturn = [NSJSONSerialization JSONObjectWithData:jsonData
                                                                   options:NSJSONReadingMutableContainers
                                                                     error:&error];
        
        if (error)
        {
            NSLog(@"error is %@", [error localizedDescription]);
            
            // Handle Error and return
            return nil;
        }
        
        return dictReturn;
    }
    else
    {
        // Handle Error
        return nil;
    }
}

@end
