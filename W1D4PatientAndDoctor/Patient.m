//
//  Patient.m
//  W1D4PatientAndDoctor
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient


-(instancetype) initWithName:(NSString *)name withAge:(int)age withHealthCardNumber:(int)number{
  if (self = [super init]){
    _name = name;
    _age = age;
    _healthCardNumber = number;
    _currentPrescriptions = [[NSMutableSet alloc] init];
  }
  return self;
}

-(instancetype)initWithName:(NSString *)name withAge:(int)age{
  if (self = [super init]){
    _name = name;
    _age = age;
    _currentPrescriptions = [[NSMutableSet alloc] init];
  }
  return self;
}

-(void)visitDoctor:(Doctor *)doctor{
  self.currentDoctor = doctor;
  
  //List your name
  [self.currentDoctor.patientsQueue addObject:self];
  NSLog(@"%@: I'll be visiting %@.",self.name, doctor.name);
}

-(void)requestMedication:(Doctor *)doctor withSymptoms:(NSMutableSet *)symptoms{
  [doctor writePrescriptionForPatient:self withSymptoms:symptoms];

}

@end
