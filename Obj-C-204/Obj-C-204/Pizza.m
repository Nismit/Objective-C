//
//  Pizza.m
//  Obj-C-201
//
//  Created by Michinobu Nishimoto on 2017-04-25.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(NSInteger) size toppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        // See Kichen.h NS_ENUM
        switch (size) {
            case 1:
                _size = @"Small";
                break;
            case 2:
                _size = @"Medium";
                break;
            case 3:
                _size = @"Large";
                break;
            default:
                _size = @"Medium";
                break;
        }
        
        _toppings = toppings;
        
        [self bakedPizza];
    }
    return self;
}

- (void)bakedPizza {
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"Pizza "];
    [str appendFormat:@"size:%@, toppings:", _size];
    for (int i = 1; i < _toppings.count; i++) {
       [str appendFormat:@"%@ ", _toppings[i]];
    }
    
    NSLog(@"%@", str);
}

@end
