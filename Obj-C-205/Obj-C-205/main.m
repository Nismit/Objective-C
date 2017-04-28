//
//  main.m
//  Obj-C-205
//
//  Created by Michinobu Nishimoto on 2017-04-27.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "FirstManager.h"
#import "SecondManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        FirstManager *madManager = [FirstManager new];
        SecondManager *godManager = [SecondManager new];
        DeliveryService *deliService = [DeliveryService new];
        [madManager setService:deliService];
        [godManager setService:deliService];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            if([inputString compare:@"show"] == NSOrderedSame) {
                [deliService showDeliveryData:[deliService getDelivered]];
            } else {
                // Take the first word of the command as the size, and the rest as the toppings
                NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
                // And then send some message to the kitchen...
            
                switch(arc4random_uniform(2)) {
                    case 0:
                        restaurantKitchen.kitchenDelegate = madManager;
                        break;
                    case 1:
                        restaurantKitchen.kitchenDelegate = godManager;
                        break;
                    default:
                        restaurantKitchen.kitchenDelegate = madManager;
                        break;
                }
            
                [restaurantKitchen convertOrder:commandWords];
            }
        }
    }
    return 0;
}
