//
//  Contact.h
//  Obj-C-106
//
//  Created by Michinobu Nishimoto on 2017-04-22.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString *name;
@property NSString *email;
@property NSMutableDictionary *additionalPhone;

- (instancetype)initWithUsername:(NSString *)name Email:(NSString *)email;
- (NSString *)getInformation;
- (void)addDictionary:(NSArray *)input;

@end
