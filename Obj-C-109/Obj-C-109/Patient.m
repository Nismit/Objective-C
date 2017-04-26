//
//  Patient.m
//  Obj-C-109
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName: (NSString *)name age: (NSInteger) age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _healthCard = NO;
    }
    return self;
}

@end
