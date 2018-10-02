//
//  KLNetworkUtil.h
//  LearnAFNetworking
//
//  Created by liqian on 2018/10/2.
//  Copyright © 2018 liqian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KLNetworkUtil : NSObject

+ (KLNetworkUtil *)sharedUtil;

- (void)getMyProfile;

@end

NS_ASSUME_NONNULL_END
