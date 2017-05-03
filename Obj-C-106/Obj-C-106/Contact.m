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
        _additionalPhone = [NSMutableDictionary dictionary];
    }
    return self;
}

- (NSString *)getInformation {
    NSMutableString *str = [[NSMutableString alloc] initWithFormat:@"%@(%@)", _name, _email];
    for (id key in [_additionalPhone keyEnumerator]) {
        [str appendFormat:@" %@, %@", key, [_additionalPhone valueForKey:key]];
    }
    return [NSString stringWithFormat:@"%@", str];
}

- (void)addDictionary:(NSArray *)input {
    [_additionalPhone setObject:input[1] forKey:input[0]];
}

@end
