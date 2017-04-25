//
//  ScoreKeeper.h
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-23.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger question;
@property NSInteger correct;
@property NSInteger wrong;

- (void) countCorrect;
- (void) countWrong;
- (void) printScore;

@end
