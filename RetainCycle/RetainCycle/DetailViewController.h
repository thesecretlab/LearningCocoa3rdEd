//
//  DetailViewController.h
//  RetainCycle
//
//	Created for “Learning Cocoa with Objective-C Third Edition”
//	Copyright (c) 2012-2013 the authors of the book. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExampleView.h"

@interface DetailViewController : UIViewController<ExampleVieDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
