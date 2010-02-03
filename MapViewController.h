//
//  MapViewController.h
//  iphonedemo
//
//  Created by gary howard on 2/2/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController {
    IBOutlet MKMapView *mapView;
	CLLocationManager *locationManager;
}
@property(nonatomic, retain) IBOutlet MKMapView *mapView;
@property(nonatomic, retain) CLLocationManager *locationManager;
@end
