//
//  ViewController.m
//  PrintingiOS
//
//  Created by Jon Manning on 1/04/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)print:(id)sender {
    UIPrintInteractionController* printInteraction = [UIPrintInteractionController sharedPrintController];
    
    UISimpleTextPrintFormatter* textFormatter = [[UISimpleTextPrintFormatter alloc] initWithText:textView.text];
    
    printInteraction.printFormatter = textFormatter;
    
    [printInteraction presentAnimated:YES completionHandler:^(UIPrintInteractionController *printInteractionController, BOOL completed, NSError *error) {
        
    }];
}
@end
