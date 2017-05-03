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
    NSLog(@"new - Create a new contact");
    NSLog(@"list - List all contacts");
    NSLog(@"show - Show a contact, must need a index number");
    NSLog(@"find - Find in contacts, must need keyword");
    NSLog(@"history - Show command history");
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
