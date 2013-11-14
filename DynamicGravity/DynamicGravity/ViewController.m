//
//  ViewController.m
//  DynamicGravity
//
//  Created by Tim Nugent on 6/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong)UIDynamicAnimator *animator;
@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
	{
		[super viewDidAppear:animated];
		
		_animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
		
		UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[self.imageView]];
		[_animator addBehavior:gravity];
		
		UICollisionBehavior *collision = [[UICollisionBehavior alloc] initWithItems:@[self.imageView]];
		collision.translatesReferenceBoundsIntoBoundary = YES;
		[_animator addBehavior:collision];
	}
	
@end
