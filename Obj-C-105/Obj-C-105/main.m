//
//  main.m
//  Obj-C-105
//
//  Created by Michinobu Nishimoto on 2017-04-20.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [ScoreKeeper new];
        
        while (true) {
            AdditionQuestion *q = [AdditionQuestion new];
            [q printQuestion];
            InputHandler *input = [InputHandler new];
            if ([input quitCommandWithInput:[input getUserInput]] == YES) {
                break;
            } else {
                if([q compareAnswerWithInput:[input convertToInt]] == YES) {
                    [score countCorrect];
                } else {
                    [score countWrong];
                }
            }
        }
        
        [score printScore];
    }
    return 0;
}
