//
//  DetailViewController.h
//  RetainCycle
//
//  Created by Jon Manning on 25/02/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExampleView.h"

@interface DetailViewController : UIViewController <ExampleViewDelegate>

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
