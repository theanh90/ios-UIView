//
//  Restful.h
//  UIComponents
//
//  Created by Master on 4/17/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

@interface Restful : NSObject

+ (void)handleApiWithUrlString:(NSString *)urlString completionWithError:(void (^) (BOOL error))completionWithError;
+ (void)getApiWithUrlString:(NSString *)urlString andParams:(NSMutableDictionary *)params completeWithErrorAndResult:(void (^) (BOOL error, NSDictionary *result))completionWithErrorAndResul;
+ (void)postApiWithUrlString:(NSString *)urlString andParams:(NSMutableDictionary *)params completeWithErrorAndResult:(void (^) (BOOL error, NSDictionary *result))completionWithErrorAndResul;

@end
