//
//  AboutViewController.m
//  Toledo Tech
//
//  Created by Don Miller on 5/16/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import "AboutViewController.h"
#import "Constants.h"
#import <Parse/Parse.h>

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [PFAnalytics trackEvent:@"Read" dimensions:@{@"Category": @"About"}];
    NSURL *url = [NSURL URLWithString:kAboutURL];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestURL];
}


@end
