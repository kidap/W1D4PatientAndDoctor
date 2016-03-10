//
//  Patient.h
//  W1D4PatientAndDoctor
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@protocol MedicalStuff <NSObject>

-(void)readPrescription;//:(Patient *);

@end

@interface Patient : NSObject{
  id <MedicalStuff> _delegate;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic) int age;
@property (nonatomic, strong) NSMutableSet *currentPrescriptions;

-(void)visitDoctor:(Doctor *)doctor;
-(void)requestMedication:(Doctor *)doctor withSymptoms:(NSMutableSet *)symptoms;

@end
