//
//  AdditionQuestion.h
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-23.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

- (void) printQuestion;
- (BOOL) compareAnswerWithInput: (NSInteger) input;
- (NSInteger)getAnswer;
- (NSTimeInterval)answerTime;
- (void)generateQuestion;

@end
