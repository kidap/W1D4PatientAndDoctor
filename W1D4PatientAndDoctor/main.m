//
//  main.m
//  W1D4PatientAndDoctor
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {

    Doctor *doctor1 = [[Doctor alloc] initWithName:@"Dr. Who" andSpecialization:@"Magic"];
    Patient *patient1 = [[Patient alloc] initWithName:@"Godzilla" withAge:300 withHealthCardNumber:16];
    Patient *patient2 = [[Patient alloc] initWithName:@"Wolverine" withAge:220 withHealthCardNumber:0];
    
    if ([doctor1 acceptPatient:patient1]){
      NSLog(@"%@ was accepted by %@", patient1.name, doctor1.name);
    } else {
      NSLog(@"%@ was accepted NOT by %@", patient1.name, doctor1.name);
    }
    
    if ([doctor1 acceptPatient:patient2]){
      NSLog(@"%@ was accepted by %@", patient2.name, doctor1.name);
    } else {
      NSLog(@"%@ was accepted NOT by %@", patient2.name, doctor1.name);
    }
    
  
  }
    return 0;
}
