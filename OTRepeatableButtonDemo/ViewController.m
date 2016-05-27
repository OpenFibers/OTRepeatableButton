//
//  ViewController.m
//  OTRepeatableButtonDemo
//
//  Created by openthread on 5/27/16.
//  Copyright © 2016 openthread. All rights reserved.
//

#import "ViewController.h"
#import "OTRepeatableButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    OTRepeatableButton *button = [[OTRepeatableButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [button setTitle:@"Touch and hold" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    __weak typeof(button) weakButton;
    button.action = ^{
        NSLog(@"Actived! %tu", weakButton.currentRepeatCount);
    };
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
