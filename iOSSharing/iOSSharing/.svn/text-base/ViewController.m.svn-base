//
//  ViewController.m
//  iOSSharing
//
//  Created by Jon Manning on 17/09/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import "ViewController.h"

// :: Add delegate protocol
@interface ViewController () <UITextFieldDelegate>

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

// :: Implement textFieldShouldReturn
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

// :: Add share methods
- (IBAction)shareImage:(id)sender {
    UIActivityViewController* activity = [[UIActivityViewController alloc] initWithActivityItems:@[self.imageView.image] applicationActivities:nil];
    [self presentViewController:activity animated:YES completion:nil];
}

- (IBAction)shareText:(id)sender {
    UIActivityViewController* activity = [[UIActivityViewController alloc] initWithActivityItems:@[self.textView.text] applicationActivities:nil];
    [self presentViewController:activity animated:YES completion:nil];
}
@end
