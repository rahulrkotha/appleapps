//
//  ViewController.m
//  ap20-objC
//
//  Created by Rahul R Kotha on 4/21/17.
//  Copyright © 2017 Rahul R Kotha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    UILabel *lbl;
    UITextField *txt;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    txt = [[UITextField alloc] initWithFrame:CGRectMake (20, 80, self.view.frame.size.width - 40, 30)];
    txt.borderStyle = UITextBorderStyleRoundedRect;
    txt.placeholder = @"Enter Your Name";
    [self.view addSubview:txt];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake((self.view.frame.size.width/2) - 50, 130, 100, 30);
    [btn setTitle:@"GO" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 180, self.view.frame.size.width - 40, 30)];
    lbl.text = @"Welcome";
    lbl.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lbl];

}

-(void) btnClick{
    lbl.text = [NSString stringWithFormat:@"Welcome, %@", txt.text];
    
}


@end
