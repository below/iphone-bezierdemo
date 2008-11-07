//
//  BezierDemoAppDelegate.m
//  BezierDemo
//
//  Created by Alexander v. Below on 07.11.08.
//  Copyright AVB Software 2008. All rights reserved.
//

#import "BezierDemoAppDelegate.h"
#import "BezierDemoViewController.h"

@implementation BezierDemoAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
