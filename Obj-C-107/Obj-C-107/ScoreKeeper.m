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
    float rate = 0;
    
    if(_correct != 0) {
        rate =  _correct / (float)(_correct + _wrong);
    }
    NSLog(@"score: %ld right, %ld wrong ---- %d%@", _correct, _wrong, (int)(rate * 100), @"%");
}

@end
