//
//  QuestionManager.m
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

- (NSString *)timeOutput {
    float totalTime = 0;
    float avarageTime = 0;
    
    for (int i = 0; i < _questions.count; i++) {
        totalTime = totalTime + [_questions[i] timeToAnswer];
    }
    
    avarageTime = totalTime / _questions.count;
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"total time: "];
    [str appendFormat:@"%.1fs, ", totalTime];
    [str appendFormat:@"avarage time:%.1fs", avarageTime];
    NSString *result;
    return result = str;
}

@end
