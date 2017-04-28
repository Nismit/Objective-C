//
//  DeliveryService.h
//  Obj-C-205
//
//  Created by Michinobu Nishimoto on 2017-04-27.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

@interface DeliveryService : NSObject

@property NSMutableArray *delivered;

- (void)deliverPizza:(Pizza *)pizza;
- (NSMutableArray *)getDelivered;
- (void)showDeliveryData:(NSMutableArray *)data;

@end
