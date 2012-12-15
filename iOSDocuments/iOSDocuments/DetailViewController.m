//
//  DetailViewController.m
//  iOSDocuments
//
//  Created by Jon Manning on 26/02/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import "DetailViewController.h"
#import "SampleDocument.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

@synthesize textView = _textView;
@synthesize detailItem = _detailItem;
@synthesize detailDescriptionLabel = _detailDescriptionLabel;

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
        SampleDocument* document = self.detailItem;
        self.textView.text = document.text;
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    SampleDocument* document = self.detailItem;
    document.text = self.textView.text;

}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
    self.navigationItem.hidesBackButton = YES;
}

- (void)viewDidUnload
{
    
    [self setTextView:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{   
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)done:(id)sender {
    SampleDocument* document = self.detailItem;
    [document saveToURL:document.fileURL forSaveOperation:UIDocumentSaveForOverwriting completionHandler:^(BOOL success) {
        [self.navigationController popViewControllerAnimated:YES];
    }];

}
@end
