//
//  PreferencePane.h
//  PreferencePane
//
//  Created by Tim Nugent on 5/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <PreferencePanes/PreferencePanes.h>

@interface PreferencePane : NSPreferencePane
@property (weak) IBOutlet NSButton *checkbox;

- (void)mainViewDidLoad;

@end
