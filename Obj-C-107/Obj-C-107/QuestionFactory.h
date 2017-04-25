//
//  QuestionFactory.h
//  Obj-C-107
//
//  Created by Michinobu Nishimoto on 2017-04-25.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionFactory : NSObject

@property NSArray *questionSubClass;

- (id) generateRandomQuestion;

@end
