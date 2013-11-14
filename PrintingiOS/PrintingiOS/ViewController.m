//
//  ViewController.m
//  PrintingiOS
//
//  Created by Tim Nugent on 4/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)print:(id)sender {
	UIPrintInteractionController* printInteraction =
	[UIPrintInteractionController sharedPrintController];
	UISimpleTextPrintFormatter* textFormatter =
	[[UISimpleTextPrintFormatter alloc] initWithText:_textView.text];
	printInteraction.printFormatter = textFormatter;
	[printInteraction presentAnimated:YES
					completionHandler:^(UIPrintInteractionController
										*printInteractionController, BOOL completed, NSError *error) {
					}];
}

@end
