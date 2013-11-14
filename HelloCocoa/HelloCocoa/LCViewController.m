//
//  LCViewController.m
//  HelloCocoa
//
//  Created by Tim Nugent on 24/09/13.
//
//

#import "LCViewController.h"

@interface LCViewController ()

@end

@implementation LCViewController

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
- (IBAction)showAlert:(id)sender
{
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello" message:@"Hello World" delegate:nil cancelButtonTitle:@"Close" otherButtonTitles: nil];
	[alert show];
	[self.helloButton setTitle:@"Click" forState:UIControlStateNormal];
}

@end
