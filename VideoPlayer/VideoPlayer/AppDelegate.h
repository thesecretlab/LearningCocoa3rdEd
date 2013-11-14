//
//  AppDelegate.h
//  VideoPlayer
//
//  Created by Tim Nugent on 14/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSView *playerView;
- (IBAction)play:(id)sender;
- (IBAction)playSlowMotion:(id)sender;
- (IBAction)rewind:(id)sender;

@end
