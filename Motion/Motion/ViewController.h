//
//  ViewController.h
//  Motion
//
//  Created by Tim Nugent on 4/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *xLabel;
@property (weak, nonatomic) IBOutlet UILabel *yLabel;
@property (weak, nonatomic) IBOutlet UILabel *zLabel;
@property (weak, nonatomic) IBOutlet UILabel *pitchLabel;
@property (weak, nonatomic) IBOutlet UILabel *yawLabel;
@property (weak, nonatomic) IBOutlet UILabel *rollLabel;

@end
