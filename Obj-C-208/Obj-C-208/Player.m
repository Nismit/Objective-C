//
//  Player.m
//  Obj-C-207
//
//  Created by Michinobu Nishimoto on 2017-04-28.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init:(NSString *) name
{
    self = [super init];
    if (self) {
        _currentSquare = 1;
        _gameLogic = @{
                       @4:@14, @9:@31, @20:@38, @28:@84, @40:@59, @51:@67, @63:@81,
                       @17:@7, @64:@60, @89:@26, @95:@73, @99:@78
                       };
        _gameOver = NO;
        _name = name;
    }
    return self;
}

- (void)roll {
    NSInteger temp = arc4random_uniform(6) + 1;
    _currentSquare += temp;
    //_output = [NSString stringWithFormat:@"You rolled a %ld", temp];
    NSLog(@"%@ rolled a %ld", _name, temp);
    
    if (_currentSquare >= 100) {
        NSLog(@"Finished! %@ reached 100!", _name);
        _currentSquare = 100;
        _gameOver = YES;
        return;
    }
    
    if([self compareSnakeAndLadder:_currentSquare] == NO) {
        NSLog(@"%@ landed on: %ld", _name, _currentSquare);
    }
}

- (BOOL)compareSnakeAndLadder:(NSInteger) value {
    id key = @(value);
    if([[_gameLogic allKeys] containsObject:key]) {
        id obj = [_gameLogic objectForKey:key];

        if(_currentSquare < [obj integerValue]) {
            NSLog(@"Stairway to Heaven! You Jumped from %@ to %@", key, [obj description]);
        } else {
            NSLog(@"Go to Hell! You Jumped from %@ to %@", key, [obj description]);
        }
        
        _currentSquare = [obj integerValue];
        return YES;
    } else {
        return NO;
    }
}

- (NSString *)score {
    return [NSString stringWithFormat:@"%@: %ld", _name, _currentSquare];
}

@end
