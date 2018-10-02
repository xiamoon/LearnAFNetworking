//
//  ViewController.m
//  LearnAFNetworking
//
//  Created by liqian on 2018/10/1.
//  Copyright © 2018 liqian. All rights reserved.
//

#import "ViewController.h"
#import "KLNetworkUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    NSString *basePath = @"https://dev.xiaogaijun.com/subpath";
//    NSURL *url = [NSURL URLWithString:basePath];
//    url = [url URLByAppendingPathComponent:@""];
    
    
    [[KLNetworkUtil sharedUtil] getMyProfile];
}


@end
