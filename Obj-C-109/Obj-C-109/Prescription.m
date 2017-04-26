//
//  Prescription.m
//  Obj-C-109
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)init
{
    self = [super init];
    if (self) {
        _prescriptionList = [NSMutableArray array];
    }
    return self;
}

- (void)addPrescriptionWithInformation: (NSString *)information {
    if (information != nil) {
        [_prescriptionList addObject:information];
        NSLog(@"Added the information");
    } else {
        NSLog(@"Cannot add the information");
    }
    
}

@end
