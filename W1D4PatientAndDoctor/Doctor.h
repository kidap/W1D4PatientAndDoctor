//
//  Doctor.h
//  W1D4PatientAndDoctor
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject <MedicalStuff>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *specialization;
@property (nonatomic, strong) NSMutableSet *patientsAccepted;

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)spec;
-(BOOL)acceptPatient:(Patient *)patient;// withHealthCardNo:(int)healthCardNumber;
-(void)writePrescriptionForPatient:(Patient *)patient;
@end
