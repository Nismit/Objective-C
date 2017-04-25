//
//  QuestionFactory.m
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-25.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubClass = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (id) generateRandomQuestion {
    int i = arc4random_uniform(4);
    
    Class subClass = NSClassFromString(_questionSubClass[i]);
    
    if (subClass != nil) {
        id instance = [subClass new];
        return instance;
    } else {
        return nil;
    }
}

@end
