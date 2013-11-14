//
//  ViewController.h
//  Photos
//
//  Created by Tim Nugent on 14/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)takePhoto:(id)sender;
- (IBAction)loadFromLibrary:(id)sender;

@end
