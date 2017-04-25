//
//  GameController.h
//  Obj-C-108
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSMutableArray *dice;
@property NSMutableArray *heldDice;
@property int gameCount;

- (void)rollDice;
- (void)holdDie:(NSInteger) idx;
- (void)resetDice;
- (void)printDice;
- (void)printScore;

@end
