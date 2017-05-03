//
//  ContactList.m
//  Obj-C-106
//
//  Created by Michinobu Nishimoto on 2017-04-23.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray array];
    }
    return self;
}

- (void)addContact:(Contact *)newContact {
    [_contactList addObject:newContact];
}

- (void)printAllContact {
    if([_contactList count] != 0) {
        for (int i = 0; i <= ([_contactList count] -1); i++) {
            NSLog(@"%d:%@", i, [_contactList[i] getInformation]);
        }
    } else {
        NSLog(@"NO CONTACTS\n");
    }
    
    NSLog(@"");
}

- (void)showContactWithId:(NSInteger) index {
    if([_contactList count] != 0) {
        NSLog(@"%ld:%@", index, [_contactList[index] getInformation]);
    } else {
        NSLog(@"NOT FOUND\n");
    }
    
    NSLog(@"");
}

- (void)findContact:(NSString *) key {
    for (id obj in _contactList) {
        if ([[obj name] rangeOfString:key].location != NSNotFound || [[obj email] rangeOfString:key].location != NSNotFound) {
            NSLog(@"%@", [obj getInformation]);
        }
    }
}

- (BOOL)validationEmail:(NSString *)email {
    for (id obj in _contactList) {
        if ([[obj email] compare:email] == NSOrderedSame) {
            return NO;
        }
    }
    
    return YES;
}

- (void)addDictionary:(NSInteger) idx val:(NSArray *)arr {
    [_contactList[idx] addDictionary:arr];
}



@end
