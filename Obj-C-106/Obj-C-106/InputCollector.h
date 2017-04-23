//
//  InputCollector.h
//  Obj-C-106
//
//  Created by Michinobu Nishimoto on 2017-04-22.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

- (void)printCommandList;
- (NSString *) inputForPrompt:(NSString *)promptString;

@end
