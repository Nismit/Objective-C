//
//  ScoreKeeper.m
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-23.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _correct = 0;
        _wrong = 0;
    }
    return self;
}

- (void) countCorrect {
    _correct++;
}

- (void) countWrong {
    _wrong++;
}

- (void) printScore {
    float failure = 0;
    
    if(_wrong != 0) {
        failure =  _wrong / (float)(_correct + _wrong);
        //NSLog(@"%ld", (_correct + _wrong));
        //NSLog(@"%f", failure);
    }
    NSLog(@"score: %ld right, %ld wrong ---- %d%@", _correct, _wrong, (int)(failure * 100), @"%");
}

@end
