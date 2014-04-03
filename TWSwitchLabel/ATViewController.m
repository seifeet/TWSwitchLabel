//
//  ATViewController.m
//  TWSwitchLabel
//
//  Created by AT on 4/2/14.
//  Copyright (c) 2014 AT. All rights reserved.
//

#import "ATViewController.h"
#import "TWSwitch.h"

@interface ATViewController ()

@end

@implementation ATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    CGRect frame = CGRectMake(20.0f, 120.0f, 200.0f, 100.0f);
    TWSwitch *twSwitch = [[TWSwitch alloc] initWithFrame:frame text:@"hi there" font:[UIFont systemFontOfSize:16.0f]];

    [self.view addSubview:twSwitch];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
