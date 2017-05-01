//
//  main.m
//  Obj-C-208
//
//  Created by Michinobu Nishimoto on 2017-05-01.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PlayerManager.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [InputCollector new];
        PlayerManager *manager = [PlayerManager new];
        
        NSString *confirmPlayers = [inputCollector inputForPrompt:@"\nHow many players?"];
        if([confirmPlayers intValue] > 0) {
            [manager createPlayers:[confirmPlayers integerValue]];
        } else {
            NSLog(@"Invaild value. Cannot accept.");
            return 0;
        }
        
        
        while (true) {
            NSString *commandOrder = [inputCollector inputForPrompt:@"Input Command: r, roll, restart, quit\n"];
            
            if ([[commandOrder lowercaseString] compare:@"roll"] == NSOrderedSame || [[commandOrder lowercaseString] compare:@"r"] == NSOrderedSame) {
                [manager roll];
            } else if ([[commandOrder lowercaseString] compare:@"restart"] == NSOrderedSame) {
                [manager restart];
            } else if ([[commandOrder lowercaseString] compare:@"quit"] == NSOrderedSame) {
                NSLog(@"Shutdown.");
                break;
            } else {
                // Nothing to do
            }
            
            for (int i = 0; i < [manager.players count]; i++) {
                if([manager.players[i] gameOver] == YES) {
                    NSLog(@"Game over.");
                    return 0;
                }
            }
            
            
        }
    }
    return 0;
}
