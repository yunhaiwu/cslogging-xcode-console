//
//  XcodeConsoleLogger.m
//  CocoaService-Framework
//
//  Created by 吴云海
//  Copyright © 2018年 yunhai.wu. All rights reserved.
//

#import "XcodeConsoleLogger.h"

@interface XcodeConsoleLogger ()

@property (nonatomic, strong) dispatch_queue_t log_queue;

@end

@implementation XcodeConsoleLogger

- (instancetype)init {
    self = [super init];
    if (self) {
        self.log_queue = dispatch_queue_create("com.cocoaservice.example.log.queue", DISPATCH_QUEUE_CONCURRENT);
    }
    return self;
}

#pragma mark IWJLogger
- (void)error:(NSString*)func format:(NSString*) format, ... {
    va_list args;
    if (format) {
        va_start(args, format);
        NSString *message = [[NSString alloc] initWithFormat:format arguments:args];
        va_end(args);
        dispatch_async(_log_queue, ^{
            printf("[ERROR] %s \n", [message UTF8String]);
        });
    }
}

- (void)warn:(NSString*)func format:(NSString*) format, ... {
    va_list args;
    if (format) {
        va_start(args, format);
        NSString *message = [[NSString alloc] initWithFormat:format arguments:args];
        va_end(args);
        dispatch_async(_log_queue, ^{
            printf("[WARN] %s \n", [message UTF8String]);
        });
    }
}

- (void)info:(NSString*)func format:(NSString*) format, ... {
    va_list args;
    if (format) {
        va_start(args, format);
        NSString *message = [[NSString alloc] initWithFormat:format arguments:args];
        va_end(args);
        dispatch_async(_log_queue, ^{
            printf("[INFO] %s \n", [message UTF8String]);
        });
    }
}

- (void)debug:(NSString*)func format:(NSString*) format, ... {
    va_list args;
    if (format) {
        va_start(args, format);
        NSString *message = [[NSString alloc] initWithFormat:format arguments:args];
        va_end(args);
        dispatch_async(_log_queue, ^{
            printf("[INFO] %s \n", [message UTF8String]);
        });
    }
}

- (void)verbose:(NSString*)func format:(NSString*) format, ... {
    va_list args;
    if (format) {
        va_start(args, format);
        NSString *message = [[NSString alloc] initWithFormat:format arguments:args];
        va_end(args);
        dispatch_async(_log_queue, ^{
            printf("[VERBOSE] %s \n", [message UTF8String]);
        });
    }
}

@end
