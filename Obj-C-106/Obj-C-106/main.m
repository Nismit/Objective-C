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
        
        while (true) {
            [inputCollector printCommandList];
            NSString *commandOrder = [inputCollector inputForPrompt:@"> _"];
            
            if ([commandOrder compare:@"new"] == NSOrderedSame) {
                NSString *name = [inputCollector inputForPrompt:@"Input full name"];
                NSString *email = [inputCollector inputForPrompt:@"Input email"];
                Contact *contact = [[Contact new] initWithUsername:name Email:email];
                [contactList addContact:contact];
            } else if ([commandOrder compare:@"list"] == NSOrderedSame) {
                [contactList printAllContact];
            } else if ([commandOrder compare:@"show"] == NSOrderedSame) {
                //[contactList printContact];
            } else if ([commandOrder compare:@"quit"] == NSOrderedSame) {
                NSLog(@"Shutdown.");
                break;
            } else {
                
            }
            
        }
        
    }
    return 0;
}
