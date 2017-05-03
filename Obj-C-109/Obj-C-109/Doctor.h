//
//  Doctor.h
//  Obj-C-109
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescription.h"

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSMutableArray *patientList;

- (instancetype)initWithName: (NSString *)name specialization: (NSString *) specialization;
- (void)acceptPatientVaildHealthCard: (Patient *) patient;
- (NSString *)requestMedication: (Patient *) patient;

@end
