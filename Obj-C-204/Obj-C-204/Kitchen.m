//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (instancetype)init
{
    self = [super init];
    if (self) {
        _toppings = [NSArray array];
    }
    return self;
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    if([self.kitchenDelegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] == YES) {
        if ([self.kitchenDelegate kitchenShouldUpgradeOrder:(Kitchen *)self] == YES) {
            Pizza *pizza = [[Pizza new] initWithSize:kLarge toppings:toppings];
            
            
            if([self.kitchenDelegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.kitchenDelegate kitchenDidMakePizza:pizza];
            }
            
            return pizza;
        } else {
            Pizza *pizza = [[Pizza new] initWithSize:size toppings:toppings];
            
            if([self.kitchenDelegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.kitchenDelegate kitchenDidMakePizza:pizza];
            }
            
            return pizza;
        }
    } else {
        return nil;
    }
}

- (void)convertOrder:(NSArray *) order {
    NSString *str = order[0];
    [str lowercaseString];
    
    if([str compare:@"small"] == NSOrderedSame) {
        str = order[1];
        if (str != nil && ([str compare:@"meat"] == NSOrderedSame)) {
            [[self class] meatLoversWithSize:kSmall];
        } else {
           [self makePizzaWithSize:kSmall toppings:order];
        }
    } else if([str compare:@"medium"] == NSOrderedSame) {
        str = order[1];
        if (str != nil && ([str compare:@"meat"] == NSOrderedSame)) {
            [[self class] meatLoversWithSize:kSmall];
        } else {
            [self makePizzaWithSize:kMedium toppings:order];
        }
    } else if ([str compare:@"large"] == NSOrderedSame) {
        str = order[1];
        if (str != nil && ([str compare:@"meat"] == NSOrderedSame)) {
            [[self class] meatLoversWithSize:kLarge];
        } else {
            [self makePizzaWithSize:kLarge toppings:order];
        }
    } else {
        if([str compare:@"pepperoni"] == NSOrderedSame) {
            [[self class] largePepperoni];
        } else {
            NSLog(@"Size invaild, pizza will be baked medium size");
            [self makePizzaWithSize:kMedium toppings:order];
        }
    }
}

+ (Pizza *)largePepperoni {
    NSArray *toppings = [NSArray arrayWithObjects:@"", @"pepperoni", @"cheese", @"garlic", nil];
    return [[Pizza new] initWithSize:kLarge toppings:toppings];
}

+ (Pizza *)meatLoversWithSize:(PizzaSize)size {
    NSArray *toppings = [NSArray arrayWithObjects:@"", @"meat", @"Double-meat", @"Triple-meat", @"Quad-meat", nil];
    return [[Pizza new] initWithSize:size toppings:toppings];
}

@end
