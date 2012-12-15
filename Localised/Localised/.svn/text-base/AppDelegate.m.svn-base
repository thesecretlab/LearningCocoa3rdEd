//
//  AppDelegate.m
//  Localised
//
//  Created by Jon Manning on 7/04/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize languageLabel = _langaugeLabel;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSString* currentLanguage = [[[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"] objectAtIndex:0];
    
    NSString* labelFormat = NSLocalizedString(@"main language: %@", nil);
    
    self.languageLabel.stringValue = [NSString stringWithFormat:labelFormat, currentLanguage];
    
}

@end
