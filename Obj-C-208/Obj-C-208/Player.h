//
//  Player.h
//  Obj-C-207
//
//  Created by Michinobu Nishimoto on 2017-04-28.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSString *name;
@property NSInteger currentSquare;
@property NSDictionary *gameLogic;
@property NSString *output;
@property BOOL gameOver;

- (instancetype)init:(NSString *) name;
- (void)roll;
- (BOOL)compareSnakeAndLadder:(NSInteger) value;
- (NSString *)score;

@end
