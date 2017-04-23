//
//  Contact.m
//  Obj-C-106
//
//  Created by Michinobu Nishimoto on 2017-04-22.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithUsername:(NSString *)name Email:(NSString *)email {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

- (NSString *)getInformation {
    return [NSString stringWithFormat:@"%@(%@)", _name, _email];
}

@end
