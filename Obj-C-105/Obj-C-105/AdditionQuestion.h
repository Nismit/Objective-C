//
//  AdditionQuestion.h
//  Obj-C-105
//
//  Created by Michinobu Nishimoto on 2017-04-20.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSString *question;
@property NSInteger answer;

- (void) printQuestion;
- (BOOL) compareAnswerWithInput: (NSInteger) input;

@end
