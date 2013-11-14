//
//  AppDelegate.m
//  Localised
//
//  Created by Tim Nugent on 5/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	NSString *currentLangauge = [[[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"] objectAtIndex:0];
	NSString *labelFormat = NSLocalizedString(@"main language: %@", nil);
	self.languagesLabel.stringValue = [NSString stringWithFormat:labelFormat,currentLangauge];
}

@end
