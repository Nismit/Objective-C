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
        _leftValue = arc4random_uniform(91) + 10;
        _rightValue = arc4random_uniform(91) + 10;
        
        //_answer = _leftValue + _rightValue;
        //_question = [NSString stringWithFormat:@"%ld + %ld = ?", _leftValue, _rightValue];
        _startTime = [NSDate date];
        
    }
    return self;
}

- (NSInteger)getAnswer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)timeToAnswer {
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void)generateQuestion {
    // Nothing to do
    // See SubtractionQuestion.m
}

@end
