//
//  RESWebViewController.m
//  RESAssignment4
//
//  Created by Robert Slatkin on 2/24/15.
//  Copyright (c) 2015 Robert Slatkin. All rights reserved.
//

#import "RESWebViewController.h"
#import "RESTableViewController.h"

@interface RESWebViewController ()

@end

@implementation RESWebViewController


- (instancetype)initWithNibName:(NSString *)nibNameorNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameorNil bundle:nibBundleOrNil];
    
    // Return the address of the new object;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
   }

- (void)viewWillAppear: (BOOL)animated {
    [super viewWillAppear:animated];
    
    NSMutableString *selected = self.selected;
    
    self.navigationItem.title = selected;
    
    NSURL *url = [NSURL URLWithString:selected];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLConnection *conn = [NSURLConnection connectionWithRequest:request delegate:self];
    
    if(conn!=nil)
    {
        [conn start];
    }
    
    [_urlPage loadRequest:request];
    
  }

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    //Clear first responder
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/






- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{

    
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    
    
}


- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    
    [error localizedDescription];
    
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{

    
}


@end
