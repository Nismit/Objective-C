//
//  Dice.m
//  Obj-C-108
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        //[self roll];
    }
    return self;
}

- (void)roll {
    _value = arc4random_uniform(6) + 1;
    //[self die];
}

- (NSString *)die {
    switch (_value) {
        case 1:
            return @"⚀";
        case 2:
            return @"⚁";
        case 3:
            return @"⚂";
        case 4:
            return @"⚃";
        case 5:
            return @"⚄";
        case 6:
            return @"⚅";
        default:
            return @"Err";
            break;
    }
}

@end
