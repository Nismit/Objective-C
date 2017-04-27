//
//  main.m
//  Obj-C-202
//
//  Created by Michinobu Nishimoto on 2017-04-26.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FoodTruck *foodTruck = [[FoodTruck new] initWithName:@"Kusa" andFoodType:@"weed"];
        Cook *cook = [Cook new];
        foodTruck.delegate = cook;
        [foodTruck.delegate customMethod];
        [foodTruck serve:5];
        [foodTruck cashOut];
    }
    return 0;
}
