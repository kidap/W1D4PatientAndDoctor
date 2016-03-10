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
    _patientsAccepted = [[NSMutableSet alloc] init];
    _patientsQueue = [[NSMutableSet alloc] init];
    _medications = @{
                     @"nausea":@"sleep",
                     @"headache":@"advil",
                     @"doesnt bleed":@"Go home and grab a beer"
                     };
  }
  return self;
}
-(void)startAttendingToPatientsInQueue{
  NSLog(@"\n");
  NSLog(@"*** THE DOCTOR WALKS IN *** ...starts accepting patients");
  
  for (Patient *currentPatient in self.patientsQueue)
    if ([self acceptPatient:currentPatient]){
      //Add patients to accepted
      [self.patientsAccepted addObject:currentPatient];
      
      NSLog(@"%@ was accepted by %@", currentPatient.name, self.name);
    } else {
      NSLog(@"%@ was NOT accepted by %@. %@ doesn't have a health card.", currentPatient.name, self.name, currentPatient.name);
    }
  
  
  NSLog(@"...no more patients in queue. Doctor will start accepting prescription requests.");
  //Remove all patients from queue
  [self.patientsQueue removeAllObjects];
}

-(BOOL)acceptPatient:(Patient *)patient{// withHealthCardNo:(int)healthCardNumber{
  if (patient.healthCardNumber && patient.healthCardNumber != 0){
    return YES;
  }
  return NO;
}
-(void)writePrescriptionForPatient:(Patient *)patient withSymptoms:(NSMutableSet *)symptoms{
  //Check if patient was accepted, log out error
  if([self.patientsAccepted containsObject:patient]){
    
    //Doctor checks patient's current prescriptions
    for (NSString *item in patient.currentPrescriptions){
      //Doctor checks
      NSLog(@"%@ sees the current prescription for %@ : %@", self.name, patient.name, item);
    }
    
    //Give prescriptions
    for (NSString *symptom in symptoms){
      if (self.medications[symptom]){
        NSLog(@"For %@: %@ prescribed %@ for %@.", patient.name, self.name, self.medications[symptom],symptom);
        [patient.currentPrescriptions addObject:@"sleep for nausea"];
      }
    }
    
  } else {
    NSLog(@"%@ was never accepted by %@. %@ can't issue prescriptions.", patient.name, self.name, self.name);
  }
  
}
@end
