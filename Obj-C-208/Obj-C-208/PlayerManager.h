//
//  PlayerManager.h
//  Obj-C-208
//
//  Created by Michinobu Nishimoto on 2017-05-01.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Player.h"

@interface PlayerManager : NSObject

@property NSMutableArray *players;
@property NSInteger currentIndex;

- (void)createPlayers:(NSInteger) count;
- (void)roll;
- (void)output;
- (NSString *)score;
- (void)restart;

@end
