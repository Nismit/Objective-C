//
//  ApplePaymentService.m
//  Obj-C-203
//
//  Created by Michinobu Nishimoto on 2017-04-26.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger) amount {
    NSLog(@"ApplePay processed amount $%ld", amount);
}

- (BOOL)canProcessPayment {
    return (arc4random_uniform(2) == 0) ? NO : YES;
}

@end
