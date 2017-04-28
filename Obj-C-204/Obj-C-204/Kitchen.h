//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;

typedef NS_ENUM(NSInteger, PizzaSize) {
    kSmall = 1,
    kMedium,
    kLarge
};

@protocol KitchenDelegate <NSObject>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

@interface Kitchen : NSObject

@property (nonatomic, weak) id<KitchenDelegate> kitchenDelegate;
@property NSArray *toppings;

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
- (void)convertOrder:(NSArray *) order;

+ (Pizza *)largePepperoni;
+ (Pizza *)meatLoversWithSize:(PizzaSize)size;

@end
