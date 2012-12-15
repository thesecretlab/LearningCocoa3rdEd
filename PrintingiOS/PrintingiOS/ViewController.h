//
//  ViewController.h
//  PrintingiOS
//
//  Created by Jon Manning on 1/04/12.
//  Copyright (c) 2012 Secret Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)print:(id)sender;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@end
