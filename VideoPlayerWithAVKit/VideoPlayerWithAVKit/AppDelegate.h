//
//  AppDelegate.h
//  VideoPlayerWithAVKit
//
//  Created by Tim Nugent on 14/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet AVPlayerView *aPlayerView;

@end
