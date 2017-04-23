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
        NSLog(@"NO CONTACTS");
    }
}



@end
