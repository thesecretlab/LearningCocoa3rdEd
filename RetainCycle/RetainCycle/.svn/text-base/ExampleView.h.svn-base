//
//  ExampleView.h
//  RetainCycle
//
//  Created by Jon Manning on 25/02/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleView;

@protocol ExampleViewDelegate <NSObject>
- (UIColor*)colorForView:(ExampleView*)view;
@end

@interface ExampleView : UIView
@property (strong) IBOutlet id <ExampleViewDelegate> delegate;
@end
