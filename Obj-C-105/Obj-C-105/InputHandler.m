//
//  InputHandler.m
//  Obj-C-105
//
//  Created by Michinobu Nishimoto on 2017-04-20.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
        char inputChars[256];
        fgets(inputChars, 255, stdin);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        //_userInput = [inputString intValue];
        _userInput = inputString;
        //NSLog(@"%ld", _userInput);
    }
    return self;
}

- (NSString *) getUserInput {
    return _userInput;
}

- (NSInteger) convertToInt {
    return [_userInput intValue];
}

- (BOOL) quitCommandWithInput: (NSString *) input {
    if ([input compare:@"quit"] == YES) {
        return YES;
    } else {
        return NO;
    }
}

@end
