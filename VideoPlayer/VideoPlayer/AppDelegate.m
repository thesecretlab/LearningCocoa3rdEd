//
//  AppDelegate.m
//  VideoPlayer
//
//  Created by Tim Nugent on 14/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>

@interface AppDelegate()
{
	AVPlayer *player;
}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	NSURL* contentURL = [[NSBundle mainBundle] URLForResource:@"TestVideo" withExtension:@"m4v"];
    player = [AVPlayer playerWithURL:contentURL];
    
    AVPlayerLayer* playerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    [self.playerView.layer addSublayer:playerLayer];
    playerLayer.frame = self.playerView.layer.bounds;
    playerLayer.autoresizingMask = kCALayerWidthSizable | kCALayerHeightSizable;
	
    player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
}

- (IBAction)play:(id)sender {
	[player play];
}

- (IBAction)playSlowMotion:(id)sender {
	[player setRate:0.25];
}

- (IBAction)rewind:(id)sender {
	[player seekToTime:kCMTimeZero];
}
@end
