//
//  GameController.m
//  Obj-C-108
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

static const NSInteger MAX_DICE = 5;
static const int MAX_COUNT = 5;

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dice = [NSMutableArray array];
        _heldDice = [NSMutableArray array];
        _gameCount = 0;
        
        for (int i = 0; i < MAX_DICE; i++) {
            [_dice addObject:[Dice new]];
            [_heldDice addObject:[NSNull null]];
        }
    }
    return self;
}

- (void)rollDice {
    if(_gameCount < MAX_COUNT) {
        for (int i = 0; i < MAX_DICE; i++) {
            if (_heldDice[i] == [NSNull null]) {
                [_dice[i]  roll];
            }
        }
    
        _gameCount++;
    } else {
        NSLog(@"Could not roll dice");
    }
    
    [self printDice];
    [self printScore];
}

- (void)holdDie:(NSInteger) idx {
    if(idx < 5) {
        [_heldDice replaceObjectAtIndex:idx withObject:_dice[idx]];
    }else {
        NSLog(@"Invailed Number! Put 0-4!");
    }
}

- (void)resetDice {
    [_heldDice removeAllObjects];
    _gameCount = 0;
    
    for (int i = 0; i < MAX_DICE; i++) {
        [_heldDice addObject:[NSNull null]];
    }
    
    NSLog(@"Reset All held dice");
}

- (void)printDice {
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"Die: "];
    for (int i = 0; i < MAX_DICE; i++) {
        if (_heldDice[i] != [NSNull null]) {
            //NSLog(@"held: %d", i);
            [str appendFormat:@"[%d:%@] ", i,[_heldDice[i] die]];
        } else {
            [str appendFormat:@"%d:%@ ", i,[_dice[i] die]];
        }
    }
    NSLog(@"%@", str);
}


- (void)printScore {
    NSLog(@"Remained roll count:%d", (MAX_COUNT - _gameCount));
    NSInteger score = 0;
    
    for (int i = 0; i < MAX_DICE; i++) {
        if (_heldDice[i] != [NSNull null]) {
            Dice *d = _heldDice[i];
            if([d value] == 3) {
                score = score + 0;
            } else {
                score = score + [d value];
            }
        }
    }
    
    NSLog(@"Score: %ld", score);
}

@end
