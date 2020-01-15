//
//  WJLoggerFactory.m
//  CocoaService-Framework
//
//  Created by 吴云海
//  Copyright © 2018年 yunhai.wu. All rights reserved.
//

#import "CSSimpleLoggerFactory.h"
#import "XcodeConsoleLogger.h"

@interface CSSimpleLoggerFactory ()

@property(nonatomic, strong) id<CSLogger> logger;

@end

@implementation CSSimpleLoggerFactory

#pragma mark CSLoggerFactory
- (id<CSLogger>)getLogger {
    if (!_logger) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _logger = [[XcodeConsoleLogger alloc] init];
        });
    }
    return _logger;
}

@end
