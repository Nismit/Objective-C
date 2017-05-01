//
//  main.m
//  Obj-C-207
//
//  Created by Michinobu Nishimoto on 2017-04-28.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [InputCollector new];
        
        Player *player1 = [Player new];
        
        
        while (true) {
            NSString *commandOrder = [inputCollector inputForPrompt:@"\nInput Command: roll, quit\n"];
            
            if ([commandOrder compare:@"roll"] == NSOrderedSame || [commandOrder compare:@"r"] == NSOrderedSame) {
                [player1 roll];
            } else if ([commandOrder compare:@"quit"] == NSOrderedSame) {
                NSLog(@"Shutdown.");
                break;
            } else {
                // Nothing to do
            }
            
            if(player1.gameOver == YES) {
                NSLog(@"Game over.");
                break;
            }
            
        }
    }
    return 0;
}
