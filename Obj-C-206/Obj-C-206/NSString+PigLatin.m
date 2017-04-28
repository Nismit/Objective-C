//
//  NSString+PigLatin.m
//  Obj-C-206
//
//  Created by Michinobu Nishimoto on 2017-04-28.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *)stringByPigLatinization {
    NSArray *vowel = @[@"a", @"e" ,@"i", @"o", @"u"];
    
    for (int i = 0; i < self.length; i++) {
        NSString *temp = [self substringWithRange:NSMakeRange(i, 1)];
        for (int x = 0; x < vowel.count; x++) {
            if([temp compare:vowel[x]] == NSOrderedSame) {
                NSMutableString *temp = [[NSMutableString alloc] initWithString:[self substringFromIndex:i]];
                [temp appendFormat:@"%@ay", [[self substringWithRange:NSMakeRange(0, i)] lowercaseString]];
                NSString *result = [[NSString stringWithString:temp] capitalizedString];
                return result;
            }
        }
    }
    
    return self;
}

@end
