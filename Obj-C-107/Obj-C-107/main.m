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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        NSString *right = @"Right!\n";
        NSString *wrong = @"Wrong!\n";
        ScoreKeeper *scoreKeeper = [ScoreKeeper new];
        InputHandler *inputHander = [InputHandler new];
        
        QuestionManager *questionManager = [QuestionManager new];
        //QuestionFactory *questionFactory = [QuestionFactory new];
        
        while (gameOn) {
            // do something
        }
        
    }
    return 0;
}
