//
//  AppDelegate.m
//  StatusItem
//
//  Created by Tim Nugent on 5/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate()
{
	NSStatusItem *statusItem;
}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
	
	statusItem.title = @"Test";
	statusItem.menu = self.menu;
	statusItem.highlightMode = YES;
}

- (IBAction)quit:(id)sender
{
	[[NSApplication sharedApplication] terminate:nil];
}
@end
