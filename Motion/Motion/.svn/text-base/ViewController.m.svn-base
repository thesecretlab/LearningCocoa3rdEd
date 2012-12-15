//
//  ViewController.m
//  Motion
//
//  Created by Jon Manning on 29/03/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    CMMotionManager* _motionManager;
}

@end

@implementation ViewController
@synthesize xLabel;
@synthesize yLabel;
@synthesize zLabel;
@synthesize pitchLabel;
@synthesize yawLabel;
@synthesize rollLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	_motionManager = [[CMMotionManager alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [_motionManager startDeviceMotionUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMDeviceMotion *motion, NSError *error) {
        
        self.xLabel.text = [NSString stringWithFormat:@"%.1f", motion.userAcceleration.x];
        self.yLabel.text = [NSString stringWithFormat:@"%.1f", motion.userAcceleration.y];
        self.zLabel.text = [NSString stringWithFormat:@"%.1f", motion.userAcceleration.z];
        
        
        // Convert the angles to degrees
        CGFloat pitchDegrees = motion.attitude.pitch * 180 / M_PI;
        CGFloat yawDegrees = motion.attitude.yaw * 180 / M_PI;
        CGFloat rollDegrees = motion.attitude.roll * 180 / M_PI;
        
        
        self.pitchLabel.text = [NSString stringWithFormat:@"%.1f", pitchDegrees];
        self.yawLabel.text = [NSString stringWithFormat:@"%.1f", yawDegrees];
        self.rollLabel.text = [NSString stringWithFormat:@"%.1f", rollDegrees];
        
                                
    }];
}

- (void)viewWillDisappear:(BOOL)animated {
    [_motionManager stopDeviceMotionUpdates];
}

- (void)viewDidUnload
{
    [self setXLabel:nil];
    [self setYLabel:nil];
    [self setZLabel:nil];
    [self setPitchLabel:nil];
    [self setYawLabel:nil];
    [self setRollLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
