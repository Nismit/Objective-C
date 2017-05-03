//
//  Patient.h
//  Obj-C-109
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property NSString *name;
@property NSInteger age;
@property BOOL healthCard;
@property NSString *symptom;


- (instancetype)initWithName: (NSString *)name age: (NSInteger) age;

@end
