//
//  InputHandler.m
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-23.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) getUserInput {
    char inputChars[256];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    _userInput = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return _userInput;
}

- (BOOL) quitCommandWithInput: (NSString *) input {
    if ([input compare:@"quit"] == YES) {
        return YES;
    } else {
        return NO;
    }
}

@end
