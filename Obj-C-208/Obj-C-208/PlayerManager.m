//
//  PlayerManager.m
//  Obj-C-208
//
//  Created by Michinobu Nishimoto on 2017-05-01.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray array];
        _currentIndex = 0;
    }
    return self;
}

- (void)createPlayers:(NSInteger) count {
    InputCollector *inputCollector = [InputCollector new];
    
    for (int i = 0; i < count; i++) {
        NSString *playerName = [inputCollector inputForPrompt:@"Player Name (ex. John Doe)"];
        Player *player = [[Player new] init:playerName];
        [_players addObject:player];
    }
}

- (void)roll {
    [_players[_currentIndex] roll];
    _currentIndex++;
    
    if (_currentIndex >= _players.count) {
        _currentIndex = 0;
    }
    
    [self output];
}

- (void)output {
    NSLog(@"%@", [self score]);
}

- (NSString *)score {
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"Score:"];
    
    for (int i = 0; i < _players.count; i++) {
        [str appendFormat:@" %@", [_players[i] score]];
    }
    
    return str;
}

- (void)restart {
    for (int i = 0; i < _players.count; i++) {
        [_players[i] setCurrentSquare:1];
    }
    
    _currentIndex = 0;
    
    NSLog(@"Restart all players.\nLet's start first player again");
}

@end
