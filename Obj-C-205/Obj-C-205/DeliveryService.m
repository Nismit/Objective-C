//
//  DeliveryService.m
//  Obj-C-205
//
//  Created by Michinobu Nishimoto on 2017-04-27.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _delivered = [NSMutableArray array];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza {
    [_delivered addObject:pizza];
    DeliveryCar *car = [DeliveryCar new];
    [car deliverPizza:pizza];
}

- (NSMutableArray *)getDelivered {
    return _delivered;
}

- (void)showDeliveryData:(NSMutableArray *)data {
    if(data.count != 0) {
        NSLog(@"Delivered List");
        for (int i = 0; i < data.count; i++) {
            [data[i] bakedPizza];
        }
    } else {
        NSLog(@"There's no data");
    }
}

@end
