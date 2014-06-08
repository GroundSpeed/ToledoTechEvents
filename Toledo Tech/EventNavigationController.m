//
//  EventNavigationController.m
//  Toledo Tech
//
//  Created by Don Miller on 5/25/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import "EventNavigationController.h"

@interface EventNavigationController ()

@end

@implementation EventNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
