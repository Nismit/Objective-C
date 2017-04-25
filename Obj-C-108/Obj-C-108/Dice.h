//
//  Dice.h
//  Obj-C-108
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property NSInteger value;

- (void)roll;
- (NSString *)die;

@end
