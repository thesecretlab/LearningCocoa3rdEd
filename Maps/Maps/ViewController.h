//
//  ViewController.h
//  Maps
//
//  Created by Tim Nugent on 6/11/2013.
//  Copyright (c) 2013 Tim Nugent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
