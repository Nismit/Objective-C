//
//  InputCollector.m
//  Obj-C-106
//
//  Created by Michinobu Nishimoto on 2017-04-22.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (void)printCommandList {
    NSLog(@"What would you like to do next?");
    NSLog(@"new - Create a new contact");
    NSLog(@"list - List all contacts");
    NSLog(@"quit - Exit Application");
}

- (NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    char inputChars[256];
    fgets(inputChars, 256, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSString *nString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return nString;
}

@end
