//
//  Patient.h
//  W1D4PatientAndDoctor
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic) int age;
@property (nonatomic) int healthCardNumber;
@property (nonatomic, strong) Doctor *currentDoctor;
@property (nonatomic, strong) NSMutableSet *currentPrescriptions;

-(instancetype)initWithName:(NSString *)name withAge:(int)age withHealthCardNumber:(int)number;
-(void)visitDoctor:(Doctor *)doctor;
-(void)requestMedication:(Doctor *)doctor withSymptoms:(NSMutableSet *)symptoms;

@end
#import "Doctor.h"