//
//  PopoverExampleViewController.m
//  PopoverExample
//
//  Created by Sharrp on 07.05.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{    
    YourViewController *vc = [[YourViewController alloc] initWithNibName:@"YourViewController" bundle:nil];
    vc.delegate = self;
    popover = [[UIPopoverController alloc] initWithContentViewController:vc];
    [vc release];
    [popover presentPopoverFromRect:CGRectMake(20, 45, 0, 0) inView:self.view
           permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

#pragma mark - Dismiss popover delegate

- (void) dismissWithData:(NSString *)data
{
    NSLog(@"%@", data);
    
    [popover dismissPopoverAnimated:YES];
    [popover release];
}

@end
