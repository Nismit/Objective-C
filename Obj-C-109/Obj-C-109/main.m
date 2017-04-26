//
//  main.m
//  Obj-C-109
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Prescription *prescription = [Prescription new];
        Doctor *doctor = [[Doctor new] initWithName:@"Doctor1" specialization:@"Cardiology"];
        Patient *patient1 = [[Patient new] initWithName:@"Nismit" age:26];
        patient1.healthCard = YES;
        
        Patient *patient2 = [[Patient new] initWithName:@"Masa" age:28];
        patient2.healthCard = NO;
        
        [doctor acceptPatientVaildHealthCard:patient1];
        [doctor acceptPatientVaildHealthCard:patient2];
        
        [prescription addPrescriptionWithInformation:[doctor requestMedication:patient1]];
        
        
    }
    return 0;
}
