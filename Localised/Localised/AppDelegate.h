//
//  AppDelegate.h
//  Localised
//
//  Created by Jon Manning on 7/04/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *languageLabel;

@end
