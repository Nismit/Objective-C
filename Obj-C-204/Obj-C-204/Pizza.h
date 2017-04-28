//
//  Pizza.h
//  Obj-C-201
//
//  Created by Michinobu Nishimoto on 2017-04-25.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

@property NSString *size;
@property NSArray *toppings;

- (instancetype)initWithSize:(NSInteger) size toppings:(NSArray *)toppings;
- (void)bakedPizza;

@end
