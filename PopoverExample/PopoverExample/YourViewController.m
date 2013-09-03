//
//  YourViewController.m
//  PopoverExample
//
//  Created by Sharrp on 07.05.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "YourViewController.h"


@implementation YourViewController

@synthesize delegate;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Add button for dismissing popover
    UIButton *dismissButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    dismissButton.frame = CGRectMake(20, 20, 200, 40);
    [dismissButton setTitle:@"press to dismiss" forState:UIControlStateNormal];
    [dismissButton addTarget:self action:@selector(dismissButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dismissButton];
}

- (void) dismissButtonTouched:(UIButton *)sender
{
    [self.delegate dismissWithData:@"Some text from popover"];
}

@end
