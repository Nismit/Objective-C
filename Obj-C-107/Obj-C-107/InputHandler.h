//
//  InputHandler.h
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-23.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property NSString *userInput;

- (NSString *) getUserInput;
- (BOOL) quitCommandWithInput: (NSString *) input;

@end
