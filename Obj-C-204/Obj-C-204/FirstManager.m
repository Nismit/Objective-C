//
//  FirstManager.m
//  Obj-C-204
//
//  Created by Michinobu Nishimoto on 2017-04-27.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "FirstManager.h"

@implementation FirstManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    for (int i = 0; i < toppings.count; i++) {
        if([toppings[i] compare:@"anchovie"] == NSOrderedSame || [toppings[i] compare:@"anchovies"] == NSOrderedSame) {
            return NO;
        }
    }
    
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    
}

@end
