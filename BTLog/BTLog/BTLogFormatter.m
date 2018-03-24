//
//  BTLogFormatter.m
//  BTLog
//
//  Created by Brooks on 2018/3/24.
//  Copyright © 2018年 Brooks. All rights reserved.
//

#import "BTLogFormatter.h"

@implementation BTLogFormatter

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    
    NSString *logLevel = nil;
    switch (logMessage.flag) {
        case DDLogFlagError:
            logLevel = @"[ERROR]";
            break;
        case DDLogFlagWarning:
            logLevel = @"[WARN]";
            break;
        case DDLogFlagInfo:
            logLevel = @"[INFO]";
            break;
        case DDLogFlagDebug:
            logLevel = @"[DEBUG]";
            break;
        default:
            logLevel = @"[VERBOSE]";
            break;
    }
    
    NSString *formatStr = [NSString stringWithFormat:@"%@[%@ %@][line %zd] %@",
                           logLevel,
                           logMessage.fileName,
                           logMessage.function,
                           logMessage.line,
                           logMessage.message];
    
    return formatStr;
}

@end

