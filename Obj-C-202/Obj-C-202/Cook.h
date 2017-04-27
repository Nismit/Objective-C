//
//  Cook.h
//  Obj-C-202
//
//  Created by Michinobu Nishimoto on 2017-04-26.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

@interface Cook : NSObject<FoodTruckDelegate>

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;
- (void)customMethod;

@end
