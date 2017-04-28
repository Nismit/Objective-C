//
//  main.m
//  Obj-C-206
//
//  Created by Michinobu Nishimoto on 2017-04-28.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSArray *arr = [inputString componentsSeparatedByString:@" "];
        
        
        NSMutableString *temp = [[NSMutableString alloc] init];
        for (int i = 0; i < arr.count; i++) {
            [temp appendFormat:@"%@ ",[arr[i] stringByPigLatinization]];
        }
        
        NSLog(@"%@", temp);
        
    }
    return 0;
}
