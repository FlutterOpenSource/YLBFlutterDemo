//
//  YULIBOViewController.m
//  YLBFlutterDemo
//
//  Created by ProBobo on 04/09/2020.
//  Copyright (c) 2020 ProBobo. All rights reserved.
//

//#import "YULIBOViewController.h"
//
//@interface YULIBOViewController ()
//
//@end
//
//@implementation YULIBOViewController
//
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//}
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//@end

@import Flutter;
#import "YULIBOAppDelegate.h"
#import "YULIBOViewController.h"
#import "YLBFlutterDemo_Example-Swift.h"

@implementation YULIBOViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
//    [self.navigationController setNavigationBarHidden:YES animated:NO];
    // Make a button to call the showFlutter function when pressed.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(showFlutter)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Show Message!" forState:UIControlStateNormal];
    button.backgroundColor = UIColor.cyanColor;
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
    
    button.center = CGPointMake(CGRectGetWidth(self.view.frame)/2.0, CGRectGetHeight(self.view.frame)/2.0);
}

- (void)showFlutter {
    FlutterEngine *flutterEngine = ((YULIBOAppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    [self.navigationController pushViewController:flutterViewController animated:YES];
}

- (void)showFlutter2 {
  FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithProject:nil nibName:nil bundle:nil];
  [self presentViewController:flutterViewController animated:YES completion:nil];
}
@end

