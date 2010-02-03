//
//  MapViewController.m
//  iphonedemo
//
//  Created by gary howard on 2/2/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"



@implementation MapViewController
@synthesize mapView;
@synthesize locationManager;
/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
	
	CLLocationCoordinate2D mapCenter;	
	MKCoordinateRegion mapRegion;
	MKCoordinateSpan mapSpan;
	
	mapSpan.latitudeDelta = 0.04 ;
	mapSpan.longitudeDelta = 0.04 ;
	mapRegion.span = mapSpan;
	mapRegion.center = newLocation.coordinate;
	[mapView setRegion:mapRegion animated:YES];
	
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.locationManager = [[[CLLocationManager alloc] init] autorelease];
	self.locationManager.delegate = self; // Tells the location manager to send updates to this object
	
	self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
	self.locationManager.distanceFilter = kCLLocationAccuracyBest;
	[locationManager startUpdatingLocation];
	//[locationManager stopUpdatingLocation];
	[mapView setShowsUserLocation:YES];
	[mapView setZoomEnabled:YES];
	
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
