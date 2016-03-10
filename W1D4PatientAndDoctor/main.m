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
    Patient *patient3 = [[Patient alloc] initWithName:@"Deadpool" withAge:220 withHealthCardNumber:99];
    
    //Patients visiting the clinic
    [patient1 visitDoctor:doctor1];
    [patient2 visitDoctor:doctor1];
    [patient3 visitDoctor:doctor1];
    
    //Doctor arrives, starts accepting patients if patient has health card
    [doctor1 startAttendingToPatientsInQueue];
    
    //Patients can start reqeusting for medications
    [patient1 requestMedication:doctor1 withSymptoms: [NSMutableSet setWithArray:@[@"nausea", @"vomiting",@"headache"]]];
    [patient2 requestMedication:doctor1 withSymptoms: [NSMutableSet setWithArray:@[@"doesn't bleed"]]];
    [patient3 requestMedication:doctor1 withSymptoms: [NSMutableSet setWithArray:@[@"doesn't bleed"]]];

    NSLog(@"%@ goes back to ask medicactions for another symptom.",patient1.name);
    [patient1 requestMedication:doctor1 withSymptoms: [NSMutableSet setWithArray:@[@"dying"]]];
  }
    return 0;
}
