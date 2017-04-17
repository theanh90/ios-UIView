//
//  Restful.m
//  UIComponents
//
//  Created by Master on 4/17/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import "Restful.h"

@implementation Restful

+ (void)handleApiWithUrlString:(NSString *)urlString completionWithError:(void (^) (BOOL error))completionWithError {
    
    // set param for request (nil param)
    NSMutableDictionary *params = [NSMutableDictionary new];
    [params setValue:@"" forKey:@""];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager new];
    [manager GET:urlString
      parameters:params
        progress:^(NSProgress * _Nonnull downloadProgress) {}
         success:^(NSURLSessionDataTask *_Nonnull task, id _Nonnull responseObject) {
             // handle Json here
             NSDictionary *response = (NSDictionary *)responseObject;
             NSLog(@"%@", response);
             
             // send error
             completionWithError(FALSE);
         }
         failure:^(NSURLSessionDataTask *_Nonnull task, NSError *_Nonnull error) {
             NSLog(@"Error: %@", error);
             
             // send error
             completionWithError(YES);
         }
    ];
}

+ (void)getApiWithUrlString:(NSString *)urlString andParams:(NSMutableDictionary *)params completeWithErrorAndResult:(void (^) (BOOL error, NSDictionary *result))completionWithErrorAndResult {
    NSDictionary __block *response = [NSDictionary new];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager new];
    [manager GET:urlString
      parameters:params
        progress:^(NSProgress *_Nonnull downloadProgress) {}
         success:^(NSURLSessionDataTask *_Nonnull task, id _Nonnull responseObject) {
             response = (NSDictionary *)responseObject;
             
             completionWithErrorAndResult(NO, response);
             NSLog(@"getApiWithUrlString SUCCESS");
         }
         failure:^(NSURLSessionDataTask *_Nonnull task, NSError *error) {
             NSLog(@"getApiWithUrlString ERROR: %@,", error);
             completionWithErrorAndResult(YES, nil);
         }
     
     ];
}

+ (void)postApiWithUrlString:(NSString *)urlString andParams:(NSMutableDictionary *)params completeWithErrorAndResult:(void (^) (BOOL error, NSDictionary *result))completionWithErrorAndResult {
    NSDictionary __block *response = [NSDictionary new];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager new];
    [manager POST:urlString
      parameters:params
        progress:^(NSProgress *_Nonnull downloadProgress) {}
         success:^(NSURLSessionDataTask *_Nonnull task, id _Nonnull responseObject) {
             response = (NSDictionary *)responseObject;
             
             completionWithErrorAndResult(NO, response);
             NSLog(@"postApiWithUrlString SUCCESS");
         }
         failure:^(NSURLSessionDataTask *_Nonnull task, NSError *error) {
             NSLog(@"postApiWithUrlString ERROR: %@,", error);
             completionWithErrorAndResult(YES, nil);
         }
     
     ];
}

@end
