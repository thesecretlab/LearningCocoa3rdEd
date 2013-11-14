//
//  AppDelegate.m
//  VideoPlayerWithAVKit
//
//  Created by Tim Nugent on 14/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	NSURL* contentURL = [[NSBundle mainBundle] URLForResource:@"TestVideo" withExtension:@"m4v"];
	
	[self.aPlayerView setPlayer:[AVPlayer playerWithURL:contentURL]];
}

@end
