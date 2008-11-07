//
//  BezierDemoAppDelegate.h
//  BezierDemo
//
//  Created by Alexander v. Below on 07.11.08.
//  Copyright AVB Software 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BezierDemoViewController;

@interface BezierDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BezierDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BezierDemoViewController *viewController;

@end

