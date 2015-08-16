//
//  VenuesNavigationController.m
//  Toledo Tech
//
//  Created by Don Miller on 5/30/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import "VenuesNavigationController.h"

@interface VenuesNavigationController ()

@end

@implementation VenuesNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
