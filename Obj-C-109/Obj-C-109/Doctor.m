//
//  Doctor.m
//  Obj-C-109
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import "Doctor.h"


@implementation Doctor

- (instancetype)initWithName: (NSString *)name specialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientList = [NSMutableArray array];
    }
    return self;
}

- (void)acceptPatientVaildHealthCard: (Patient *) patient {
    if(patient.healthCard != YES) {
        //the doctor cannot accept
        NSLog(@"Cannot accept you, %@. Should bring the vaild health card", patient.name);
    } else {
        //the doctor accept
        NSLog(@"Accept you, %@", patient.name);
        [_patientList addObject:patient];
    }
}

- (NSString *)requestMedication: (Patient *) patient {
    if(patient.healthCard == YES) {
        NSString *result;
        NSMutableString *str = [[NSMutableString alloc] init];
        [str appendFormat:@"Name:%@, ", patient.name];
        [str appendFormat:@"age:%ld, ", patient.age];
        [str appendFormat:@"Symptom:%@, ", patient.symptom];
        result = str;
        return result;
    } else {
        return nil;
    }
}

@end
