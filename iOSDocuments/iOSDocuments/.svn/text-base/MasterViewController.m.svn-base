//
//  MasterViewController.m
//  iOSDocuments
//
//  Created by Jon Manning on 26/02/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "SampleDocument.h"

@interface MasterViewController () {
    NSArray* _files;
}
@end

@implementation MasterViewController

- (NSURL*)URLforDocuments {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (void) updateFileList {
    _files = [[NSFileManager defaultManager] contentsOfDirectoryAtURL:[self URLforDocuments] includingPropertiesForKeys:nil options:0 error:nil];
    
    [self.tableView reloadData];
}

#pragma mark - View lifecycle

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self updateFileList];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    DetailViewController* detailViewController = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"OpenDocument"]) {
        SampleDocument* document = sender;
        detailViewController.detailItem = document;
    } 
}

#pragma mark - Table View Controller



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_files count];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FileCell"];
    
    NSURL* url = [_files objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [url lastPathComponent];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSURL* url = [_files objectAtIndex:indexPath.row];
    
    SampleDocument* document = [[SampleDocument alloc] initWithFileURL:url];
    [document openWithCompletionHandler:^(BOOL success) {
        [self performSegueWithIdentifier:@"OpenDocument" sender:document];
    }];
}

- (IBAction)createDocument:(id)sender {
    
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ssZZZ"];
    NSString* fileName = [NSString stringWithFormat:@"Document %@.sampleDocument", [formatter stringFromDate:[NSDate date]]];
    
    NSURL* url = [[self URLforDocuments] URLByAppendingPathComponent:fileName];
    
    
    SampleDocument* document = [[SampleDocument alloc] initWithFileURL:url];
    
    [document saveToURL:url forSaveOperation:UIDocumentSaveForCreating completionHandler:^(BOOL success) {
        
        [self performSegueWithIdentifier:@"OpenDocument" sender:document];
        
        
    }];
    
}
@end
