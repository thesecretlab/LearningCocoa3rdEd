//
//  AppDelegate.m
//  AppNapping
//
//  Created by Tim Nugent on 10/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (void)applicationDidChangeOcclusionState:(NSNotification *)notification
{
	if ([NSApp occlusionState] & NSApplicationOcclusionStateVisible)
		NSLog(@"You are in the forground, go nuts");
	else
		NSLog(@"You are in the background, slow down");
}

@end
