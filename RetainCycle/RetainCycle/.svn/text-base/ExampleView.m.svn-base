//
//  ExampleView.m
//  RetainCycle
//
//  Created by Jon Manning on 25/02/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import "ExampleView.h"

@implementation ExampleView

@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib {
    self.backgroundColor = [self.delegate colorForView:self];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
