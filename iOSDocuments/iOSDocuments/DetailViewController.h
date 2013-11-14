//
//  DetailViewController.h
//  iOSDocuments
//
//  Created by Tim Nugent on 5/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)done:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
