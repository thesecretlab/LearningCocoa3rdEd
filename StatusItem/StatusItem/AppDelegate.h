//
//  AppDelegate.h
//  StatusItem
//
//  Created by Tim Nugent on 5/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSMenu *menu;
- (IBAction)quit:(id)sender;

@end
