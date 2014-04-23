YYHRequest+Promises
=====================

`YYHRequest` category to defer requests using [PromiseKit](https://github.com/mxcl/PromiseKit). Use the power of promises with `YYHRequest` and `YYHJSONRequest`.

## Usage

Defer requests using promises.

   dispatch_promise(^{
       return [YYHRequest deferredRequestWithURL:[NSURL URLWithString:@"http://www.google.com/"]];
   }).then(^(NSData *data) {

   }).catch(^(NSError *error){

   });

YYHRequest *request = [YYHRequest requestWithURL:url];

   [request deferRequest].then(^(NSData *data) {

   }).catch(^(NSError *error){

   });