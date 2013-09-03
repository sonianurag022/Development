//
//  PopoverExampleViewController.h
//  PopoverExample
//
//  Created by Sharrp on 07.05.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "YourViewController.h"

@interface MainViewController : UIViewController <DismissPopoverDelegate>
{
    UIPopoverController *popover;
}

@end
