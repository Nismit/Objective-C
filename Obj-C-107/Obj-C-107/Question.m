//
//  AdditionQuestion.m
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-23.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger rand = arc4random_uniform(91) + 10;
        NSInteger rand2 = arc4random_uniform(91) + 10;
        
        _answer = rand + rand2;
        _question = [NSString stringWithFormat:@"%ld + %ld = ?", rand, rand2];
        _startTime = [NSDate date];
        
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

- (NSInteger)getAnswer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void)generateQuestion {
    
}

@end
