//
//  EventsDetailViewController.m
//  Toledo Tech
//
//  Created by Don Miller on 5/16/14.
//  Copyright (c) 2014 GroundSpeed. All rights reserved.
//

#import "EventsDetailViewController.h"
#import "Constants.h"

@interface EventsDetailViewController ()

@end

@implementation EventsDetailViewController

- (void)viewWillAppear:(BOOL)animated
{
    _lblTitle.text = _event.title;
    _lblStartDate.text = [GlobalFunctions formatDateString:_event.startTime];
    _lblEndDate.text = [GlobalFunctions formatDateString:_event.endTime];
    _txtDescription.text = _event.description;
}

- (void)formatDetailView
{
    _vuDetailView.backgroundColor = kBlueColor;
    _lblTitle.backgroundColor = kBlueColor;
    _lblTitle.textColor = kGreenColor;
    _lblHdrStartDate.backgroundColor = kBlueColor;
    _lblHdrStartDate.textColor = [UIColor whiteColor];
    _lblStartDate.backgroundColor = kBlueColor;
    _lblStartDate.textColor = kGreenColor;
    _lblHdrEndDate.backgroundColor = kBlueColor;
    _lblHdrEndDate.textColor = [UIColor whiteColor];
    _lblEndDate.backgroundColor = kBlueColor;
    _lblEndDate.textColor = kGreenColor;
    _txtDescription.backgroundColor = kBlueColor;
    _txtDescription.textColor = kGreenColor;
    _btnClose.backgroundColor = kGreenColor;
    _btnClose.tintColor = kBlueColor;
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self formatDetailView];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
