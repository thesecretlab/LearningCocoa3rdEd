//
//  ViewController.h
//  iOSSharing
//
//  Created by Tim Nugent on 31/10/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextField *textView;

- (IBAction)shareText:(id)sender;
- (IBAction)shareImage:(id)sender;

@end
