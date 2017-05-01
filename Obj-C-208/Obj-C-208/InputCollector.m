//
//  InputContoller.m
//  Obj-C-108
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    char inputChars[256];
    fgets(inputChars, 256, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSString *nString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return nString;
}

@end
