//
//  PaymentGateway.h
//  Obj-C-203
//
//  Created by Michinobu Nishimoto on 2017-04-26.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger) amount;
- (BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

- (void)processPaymentAmount:(NSInteger) amount;

@end
