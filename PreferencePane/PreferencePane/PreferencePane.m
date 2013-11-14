//
//  PreferencePane.m
//  PreferencePane
//
//  Created by Tim Nugent on 5/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "PreferencePane.h"

@implementation PreferencePane

- (void)mainViewDidLoad
{
	NSDictionary *preferences = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.oreilly.MyAmazingApplication"];
	self.checkbox.state = [[preferences objectForKey:@"isChecked"] boolValue];
}

- (void)didUnselect
{
	NSDictionary *preferences = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.oreilly.MyAmazingApplication"];
	NSMutableDictionary *mutablePreferences = [NSMutableDictionary dictionaryWithDictionary:preferences];
	[mutablePreferences setObject:[NSNumber numberWithBool:self.checkbox.state] forKey:@"isChecked"];
	
	[[NSUserDefaults standardUserDefaults] setPersistentDomain:mutablePreferences forName:@"com.oreilly.MyAmazingApplication"];
}

@end
