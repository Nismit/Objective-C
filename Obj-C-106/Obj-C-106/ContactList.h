//
//  ContactList.h
//  Obj-C-106
//
//  Created by Michinobu Nishimoto on 2017-04-23.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *contactList;

- (void)addContact:(Contact *)newContact;
- (void)printAllContact;

@end
