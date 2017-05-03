//
//  Prescription.h
//  Obj-C-109
//
//  Created by Michinobu Nishimoto on 2017-04-24.
//  Copyright © 2017 Michinobu Nishimoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

@property NSMutableArray *prescriptionList;

- (void)addPrescriptionWithInformation: (NSString *)information;
- (void)seePrescription;

@end
