//
//  DetailViewController.m
//  iOSDocuments
//
//  Created by Tim Nugent on 5/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import "DetailViewController.h"
#import "SampleDocument.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

	if (self.detailItem) {
	    SampleDocument *document = self.detailItem;
		self.textView.text = document.text;
	}
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done:(id)sender
{
	SampleDocument *document = self.detailItem;
	[document saveToURL:document.fileURL forSaveOperation:UIDocumentSaveForOverwriting completionHandler:^(BOOL success) {
		[self.navigationController popViewControllerAnimated:YES];
	}];
}
@end
