//
//  ViewController.h
//  iOSSharing
//
//  Created by Jon Manning on 17/09/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextField *textView;

- (IBAction)shareImage:(id)sender;
- (IBAction)shareText:(id)sender;
@end
