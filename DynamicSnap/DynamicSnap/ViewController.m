//
//  ViewController.m
//  DynamicSnap
//
//  Created by Tim Nugent on 6/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UISnapBehavior *snap;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	_animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapped:(id)sender
{
	UITapGestureRecognizer *tap = (UITapGestureRecognizer *)sender;
	CGPoint point = [tap locationInView:self.view];
	
	[self.animator removeBehavior:self.snap];
	
	UISnapBehavior *newSnap = [[UISnapBehavior alloc] initWithItem:self.imageView snapToPoint:point];
	self.snap = newSnap;
    [self.animator addBehavior:self.snap];
}
@end
