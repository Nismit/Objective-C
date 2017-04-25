//
//  main.m
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-23.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "Question.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        NSString *right = @"Right!\n";
        NSString *wrong = @"Wrong!\n";
        ScoreKeeper *scoreKeeper = [ScoreKeeper new];
        InputHandler *inputHander = [InputHandler new];
        
        QuestionManager *questionManager = [QuestionManager new];
        QuestionFactory *questionFactory = [QuestionFactory new];
        
        while (gameOn) {
            id instance = [questionFactory generateRandomQuestion];
            [questionManager.questions addObject:instance];
            NSString *input = [inputHander getUserInput];
            if ([input compare:@"quit"] == NSOrderedSame) {
                gameOn = NO;
            } else {
                if([input intValue] == [instance getAnswer]) {
                    NSLog(@"%@", right);
                    [scoreKeeper countCorrect];
                } else {
                    NSLog(@"%@", wrong);
                    [scoreKeeper countWrong];
                }
            }
            
            [scoreKeeper printScore];
            NSLog(@"%@", [questionManager timeOutput]);
        }
        
    }
    return 0;
}
