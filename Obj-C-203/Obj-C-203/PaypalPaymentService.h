//
//  PaypalPaymentService.h
//  Obj-C-203
//
//  Created by Michinobu Nishimoto on 2017-04-26.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject<PaymentDelegate>

- (void)processPaymentAmount:(NSInteger) amount;
- (BOOL)canProcessPayment;

@end
