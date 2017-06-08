//
//  ViewController.m
//  ap21-segObjc
//
//  Created by Rahul R Kotha on 4/21/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    UISegmentedControl *segmentedControl;
    UILabel *lbl;
    NSArray *myData;
}

@end

@implementation ViewController
- (void)segmentChange {
    lbl.text = [myData objectAtIndex:segmentedControl.selectedSegmentIndex];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    myData = @[@"First", @"Second", @"Third", @"Fourth"];
    
    segmentedControl = [[UISegmentedControl alloc] initWithItems:myData];
    segmentedControl.frame = CGRectMake(20, 40, self.view.frame.size.width - 40, 30);
    [segmentedControl addTarget:self action:@selector(segmentChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segmentedControl];
    
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 30)];
    lbl.text = @"Select One";
    [self.view addSubview:lbl];
    
    
}


@end
