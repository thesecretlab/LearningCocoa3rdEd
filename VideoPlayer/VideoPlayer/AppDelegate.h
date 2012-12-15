//
//  AppDelegate.h
//  VideoPlayer
//
//  Created by Jon Manning on 11/04/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSView *playerView;

- (IBAction)play:(id)sender;
- (IBAction)playSlowMotion:(id)sender;
- (IBAction)rewind:(id)sender;
@end
