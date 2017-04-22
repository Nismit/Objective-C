//
//  AdditionQuestion.m
//  Obj-C-105
//
//  Created by Michinobu Nishimoto on 2017-04-20.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger rand = arc4random_uniform(91) + 10;
        NSInteger rand2 = arc4random_uniform(91) + 10;
        
        _answer = rand + rand2;
        _question = [NSString stringWithFormat:@"%ld + %ld = ?", rand, rand2];
        
    }
    return self;
}

- (void) printQuestion {
    NSLog(@"%@", _question);
}

- (BOOL) compareAnswerWithInput: (NSInteger) input {
    //NSLog(@"Answer: %ld, User Input: %ld", _answer, input);
    if(_answer == input) {
        NSLog(@"Right!");
        return YES;
    } else {
        NSLog(@"Wrong!");
        return NO;
    }
}

@end
