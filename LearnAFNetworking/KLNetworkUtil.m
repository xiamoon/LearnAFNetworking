//
//  KLNetworkUtil.m
//  LearnAFNetworking
//
//  Created by liqian on 2018/10/2.
//  Copyright © 2018 liqian. All rights reserved.
//

#import "KLNetworkUtil.h"
#import <AFNetworking/AFNetworking.h>

@interface KLNetworkUtil ()
@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;
@end

@implementation KLNetworkUtil

+ (KLNetworkUtil *)sharedUtil {
    static KLNetworkUtil *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [KLNetworkUtil new];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        NSString *baseURL = @"https://dev.xiaogaijun.com/";
        NSURLSessionConfiguration *conf = [NSURLSessionConfiguration defaultSessionConfiguration];
        conf.timeoutIntervalForRequest = 10;
        conf.timeoutIntervalForResource = 60;
        conf.allowsCellularAccess = YES;
        
        NSString *token = @"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Iis4NjEwOCIsIm9yaWdfaWF0IjoxNTM4NDU5NzI4LCJtb2JpbGUiOiIrODYxMDgiLCJleHAiOjE1Mzg0ODEzMjgsInVzZXJfaWQiOjMxMSwiZW1haWwiOiIifQ.2NNIrAkJvfH-GxbK2JF6CrFRcY49Nl8BNvflYnOabSg";
        NSString *jwttoken = [NSString stringWithFormat:@"JWT %@", token];
        conf.HTTPAdditionalHeaders = @{
                                       @"Accept" : @"application/json;indent=4",
                                       @"Authorization" : jwttoken
                                       };
        
        AFHTTPSessionManager *sessionManager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:baseURL] sessionConfiguration:conf];
        _sessionManager = sessionManager;
    }
    return self;
}


- (void)getMyProfile {
    [_sessionManager GET:@"/profile/" parameters:@{@"id":@(318)} progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

@end
