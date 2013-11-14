//
//  AppDelegate.h
//  Location
//
//  Created by Tim Nugent on 1/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <CoreLocation/CoreLocation.h>

@interface AppDelegate : NSObject <NSApplicationDelegate,CLLocationManagerDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *latitudeLabel;
@property (weak) IBOutlet NSTextField *longitudeLabel;
@property (weak) IBOutlet NSTextField *accuracyLabel;
@property (weak) IBOutlet NSTextField *addressLabel;
@property (weak) IBOutlet NSProgressIndicator *spinner;

@end
