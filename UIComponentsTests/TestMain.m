//
//  TestMain.m
//  UIComponents
//
//  Created by Master on 4/18/17.
//  Copyright © 2017 AnhBui. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MainViewController.h"

@interface TestMain : XCTestCase
{
    MainViewController *mainView;
}

@end

@implementation TestMain



- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    mainView = [MainViewController new];
    NSInteger returnResult = [mainView addNumberOne:3 andNumberTwo:2];
    NSInteger expectedResult = 5;
    
    XCTAssertEqual(returnResult, expectedResult, @"addNumberOne:andNumberTwo fail");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
