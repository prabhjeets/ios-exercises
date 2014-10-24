//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger count = number;
    
    NSMutableString *counterString = [@"" mutableCopy];
    
    while (count <= otherNumber) {
        [counterString appendString:[NSString stringWithFormat:@"%ld", (long)count]];
        count++;
    }
    return counterString;
}

@end
