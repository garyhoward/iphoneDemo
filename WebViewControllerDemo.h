//
//  WebViewControllerDemo.h
//  iphonedemo
//
//  Created by gary howard on 2/2/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface WebViewControllerDemo : UIViewController {

	IBOutlet UIWebView *webView;
	
	IBOutlet UIActivityIndicatorView *activityIndicator;
	
}

@property(nonatomic,retain)IBOutlet UIWebView *webView;
@property(nonatomic, retain)IBOutlet UIActivityIndicatorView *activityIndicator;
@end
