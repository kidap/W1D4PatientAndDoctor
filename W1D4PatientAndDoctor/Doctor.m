//
//  Doctor.m
//  W1D4PatientAndDoctor
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)spec{
  if (self = [super init]){
    _name = name;
    _specialization = spec;
  }
  return self;
}

-(BOOL)acceptPatient:(Patient *)patient{// withHealthCardNo:(int)healthCardNumber{
  if (patient.healthCardNumber && patient.healthCardNumber != 0){
    return YES;
  }
  return NO;
}
-(void)writePrescriptionForPatient:(Patient *)patient{

}
-(void)readPrescription:(NSMutableSet *)prescription{
}

-(NSMutableSet *)writePrescription:(NSMutableSet *)prescription{

  return [[NSMutableSet alloc] init];
}
@end
