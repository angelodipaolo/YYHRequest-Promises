//
//  YYHRequest+PromisesKit.m
//  YYHRequest
//
//  Created by Angelo Di Paolo on 4/23/14.
//  Copyright (c) 2014 Yayuhh. All rights reserved.
//

#import "YYHRequest+Promises.h"

#import "YYHRequest.h"

@implementation YYHRequest (Promises)

+ (Promise *)deferredRequestWithURL:(NSURL *)url {
    return [[[self alloc] initWithURL:url] deferRequest];
}

- (Promise *)deferRequest {
    Deferred *deferred = [Deferred new];
    
    [self loadRequestWithSuccess:^(NSData *data) {
        [deferred resolve:data];
    } failure:^(NSError *error) {
        [deferred reject:error];
    }];
    
    return deferred.promise;
}

@end
