//
//  MapViewController.m
//  Life Assistant 0.4
//
//  Created by Holmes Wu on 13-5-16.
//  Copyright (c) 2013年 BSFit. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize map;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.map.delegate = self;
    MKCoordinateRegion mapRegion;
    mapRegion.center.latitude = 39.9057;
    mapRegion.center.longitude = 116.4908;
    mapRegion.span.latitudeDelta = 0.01;
    mapRegion.span.longitudeDelta = 0.01;
    [self.map setRegion:mapRegion animated:YES];
    
    CLLocationCoordinate2D myCoordinate;
    myCoordinate.latitude = 39.9057;
    myCoordinate.longitude = 116.4908;
    MKPlacemark *myMarker;
    myMarker = [[MKPlacemark alloc] initWithCoordinate:myCoordinate addressDictionary:nil];
    [map addAnnotation:myMarker];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Locate:(id)sender {
    
    MKCoordinateRegion mapRegion;
    mapRegion.center.latitude = 39.9057;
    mapRegion.center.longitude = 116.4908;
    mapRegion.span.latitudeDelta = 0.01;
    mapRegion.span.longitudeDelta = 0.01;
    [self.map setRegion:mapRegion animated:YES];
    
}
@end
