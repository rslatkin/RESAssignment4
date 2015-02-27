//
//  RESWebViewController.h
//  RESAssignment4
//
//  Created by Robert Slatkin on 2/24/15.
//  Copyright (c) 2015 Robert Slatkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RESWebViewController : UIViewController <NSURLConnectionDelegate>

@property (nonatomic) NSMutableString *selected;

@property (nonatomic, weak) IBOutlet UIWebView *urlPage;

@end
