//
//  main.m
//  Obj-C-106
//
//  Created by Michinobu Nishimoto on 2017-04-22.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [InputCollector new];
        ContactList *contactList = [ContactList new];
        NSMutableArray *commandHistory = [NSMutableArray array];
        
        NSLog(@"What would you like to do next?");
        
        while (true) {
            [inputCollector printCommandList];
            NSString *commandOrder = [inputCollector inputForPrompt:@"> _"];
            NSArray *commandWords = [commandOrder componentsSeparatedByString:@" "];
            
            if ([commandWords[0] compare:@"new"] == NSOrderedSame) {
                NSString *email = [inputCollector inputForPrompt:@"Input email"];
                if([contactList validationEmail:email] == YES) {
                    NSString *name = [inputCollector inputForPrompt:@"Input full name"];
                    Contact *contact = [[Contact new] initWithUsername:name Email:email];
                    [contactList addContact:contact];
                } else {
                    NSLog(@"This email has already exists\n");
                }
            } else if([commandWords[0] compare:@"phone"] == NSOrderedSame) {
                while (true) {
                    NSString *addInput = [inputCollector inputForPrompt:@"Add number ex)Modile 000-0000-0000 OR Done add the number, put quit"];
                    NSArray *arr = [addInput componentsSeparatedByString:@" "];
                    if([arr[0] compare:@"quit"] == NSOrderedSame) {
                        break;
                    } else {
                        [contactList addDictionary:[commandWords[1] integerValue] val:arr];
                    }
                }
            } else if ([commandWords[0] compare:@"list"] == NSOrderedSame) {
                [contactList printAllContact];
            } else if ([commandWords[0] compare:@"show"] == NSOrderedSame) {
                [contactList showContactWithId:[commandWords[1] integerValue]];
            } else if([commandWords[0] compare:@"find"] == NSOrderedSame) {
                [contactList findContact:commandWords[1]];
            } else if([commandWords[0] compare:@"history"] == NSOrderedSame) {
                __block int count = 1;
                [commandHistory enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
                    if(count == 3) {
                        *stop = YES;
                    }
                    
                    NSLog(@"%ld: %@", idx, obj);
                    count++;
                }];
            } else if ([commandWords[0] compare:@"quit"] == NSOrderedSame) {
                NSLog(@"Shutdown.");
                break;
            } else {
                
            }
            
            [commandHistory addObject:commandOrder];
            
        }
        
    }
    return 0;
}
