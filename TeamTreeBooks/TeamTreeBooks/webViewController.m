//
//  webViewController.m
//  TeamTreeBooks
//
//  Created by Remotetiger on 10/19/15.
//  Copyright © 2015 Remotetiger. All rights reserved.
//

#import "webViewController.h"
#import "CustomViewController.h"
#import "FirstTableViewController.h"
#import "booksTableViewCell.h"

@interface webViewController () 
@property (strong, nonatomic) IBOutlet UIWebView *mywebview;


@end


@implementation webViewController
-(void) viewDidLoad{
    [super viewDidLoad];
    
    NSURL *myConvertedURL = [NSURL URLWithString:_myURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:myConvertedURL];
    [_mywebview loadRequest:request];
}




@end
