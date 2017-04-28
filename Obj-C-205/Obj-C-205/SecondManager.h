//
//  SecondManager.h
//  Obj-C-204
//
//  Created by Michinobu Nishimoto on 2017-04-27.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface SecondManager : NSObject<KitchenDelegate>

@property DeliveryService *service;

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
- (void)kitchenDidMakePizza:(Pizza *)pizza;
- (void)setDeliveryService:(DeliveryService *)instance;

@end
