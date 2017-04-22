//
//  InputHandler.h
//  Obj-C-105
//
//  Created by Michinobu Nishimoto on 2017-04-20.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property NSString *userInput;

- (NSString *) getUserInput;
- (NSInteger) convertToInt;
- (BOOL) quitCommandWithInput: (NSString *) input;

@end
