//
//  PaymentGateway.m
//  Obj-C-203
//
//  Created by Michinobu Nishimoto on 2017-04-26.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger) amount {
    BOOL check = [self.paymentDelegate canProcessPayment];
    
    if (check == YES) {
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"Sorry, cannot make it");
    }
    
}

@end
