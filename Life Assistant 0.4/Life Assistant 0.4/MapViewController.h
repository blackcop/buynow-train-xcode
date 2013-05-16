//
//  MapViewController.h
//  Life Assistant 0.4
//
//  Created by Holmes Wu on 13-5-16.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *map;
- (IBAction)Locate:(id)sender;
@end
