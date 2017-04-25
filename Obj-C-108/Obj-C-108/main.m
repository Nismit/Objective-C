//
//  main.m
//  Obj-C-108
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [InputCollector new];
        GameController *gameController = [GameController new];
        
        while (true) {
            NSString *commandOrder = [inputCollector inputForPrompt:@"\nInput Command: roll, reset, quit\n"];
            
            if ([commandOrder compare:@"roll"] == NSOrderedSame) {
                [gameController rollDice];
                // hold
                while (true) {
                    NSString *input = [inputCollector inputForPrompt:@"Input hold num 0-4 or \'nope\'"];
                    
                    if ([input compare:@"nope"] == NSOrderedSame) {
                        break;
                    }else {
                        [gameController holdDie:[input intValue]];
                        [gameController printDice];
                    }
                }
                [gameController printScore];
            } else if ([commandOrder compare:@"reset"] == NSOrderedSame) {
                [gameController resetDice];
            } else if ([commandOrder compare:@"quit"] == NSOrderedSame) {
                NSLog(@"Shutdown.");
                break;
            } else {
                
            }
            
        }
    }
    return 0;
}
