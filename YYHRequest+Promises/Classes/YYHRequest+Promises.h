//
//  YYHRequest+PromisesKit.h
//  YYHRequest
//
//  Created by Angelo Di Paolo on 4/23/14.
//  Copyright (c) 2014 Yayuhh. All rights reserved.
//

#import <PromiseKit/PromiseKit.h>

#import "YYHRequest.h"

/**
 YYHRequest+PromiseKit. Defer YYHRequests using PromiseKit.

 ## Usage

 Defer requests.

     dispatch_promise(^{
         return [YYHRequest deferredRequestWithURL:[NSURL URLWithString:@"http://www.google.com/"]];
     }).then(^(NSData *data) {

     });

 YYHRequest *request = [YYHRequest requestWithURL:url];

     [request deferRequest].then(^(NSData *data) {

     });

 */
@interface YYHRequest (Promises)

/// @name Deferring Requests

/**
 Create a request and defer.
 @param url URL used to load deferred request.
 */
+ (Promise *)deferredRequestWithURL:(NSURL *)url;

/**
 Defer the request.
 */
- (Promise *)deferRequest;

@end
