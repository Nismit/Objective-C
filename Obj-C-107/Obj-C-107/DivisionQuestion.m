//
//  DivisionQuestion.m
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-25.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    super.answer = super.leftValue / super.rightValue;
    super.question = [NSString stringWithFormat:@"%ld / %ld = ?", super.leftValue, super.rightValue];
    NSLog(@"%@", super.question);
}

@end
