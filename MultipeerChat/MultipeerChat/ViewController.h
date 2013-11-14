//
//  ViewController.h
//  MultipeerChat
//
//  Created by Tim Nugent on 15/10/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>

@interface ViewController : UIViewController<MCBrowserViewControllerDelegate,MCSessionDelegate>
	
@property (weak, nonatomic) IBOutlet UITextView *chatView;
@property (weak, nonatomic) IBOutlet UITextField *msgField;

@end
