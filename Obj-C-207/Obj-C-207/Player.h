//
//  Player.h
//  Obj-C-207
//
//  Created by Michinobu Nishimoto on 2017-04-28.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;
@property NSDictionary *gameLogic;
@property BOOL gameOver;

- (void)roll;
- (BOOL)compareSnakeAndLadder:(NSInteger) value;

@end
