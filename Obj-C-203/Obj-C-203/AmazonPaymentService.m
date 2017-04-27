//
//  AmazonPaymentService.m
//  Obj-C-203
//
//  Created by Michinobu Nishimoto on 2017-04-26.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger) amount {
    NSLog(@"Amazon processed amount $%ld", amount);
}

- (BOOL)canProcessPayment {
    return (arc4random_uniform(2) == 0) ? NO : YES;
}

@end
