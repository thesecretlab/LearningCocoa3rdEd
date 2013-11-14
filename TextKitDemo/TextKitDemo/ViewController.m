//
//  ViewController.m
//  TextKitDemo
//
//  Created by Tim Nugent on 5/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.textView.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
	
	[[NSNotificationCenter defaultCenter] addObserver:self
											 selector:@selector(dynamicFontChanged:)
												 name:UIContentSizeCategoryDidChangeNotification object:nil];
}

- (void)dynamicFontChanged:(NSNotification *)notification
{
	self.textView.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
