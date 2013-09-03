//
//  YourViewController.h
//  PopoverExample
//
//  Created by Sharrp on 07.05.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DismissPopoverDelegate <NSObject>

- (void) dismissWithData:(NSString *)data;

@end

@interface YourViewController : UIViewController 
{
    id<DismissPopoverDelegate> delegate;
}

@property (nonatomic, assign) id<DismissPopoverDelegate> delegate;

@end
