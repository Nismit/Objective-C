//
//  main.m
//  Obj-C-203
//
//  Created by Michinobu Nishimoto on 2017-04-26.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger value = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay", value);
        
        char inputChars[256];
        fgets(inputChars, 255, stdin);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        PaymentGateway *gateWay = [PaymentGateway new];
        
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *apple = [ApplePaymentService new];
        
        switch ([inputString intValue]) {
            case 1:
                gateWay.paymentDelegate = paypal;
                break;
            case 2:
                gateWay.paymentDelegate = stripe;
                break;
            case 3:
                gateWay.paymentDelegate = amazon;
                break;
            case 4:
                gateWay.paymentDelegate = apple;
            default:
                NSLog(@"invaild type");
                break;
        }
        
        [gateWay processPaymentAmount:value];
        
    }
    return 0;
}
