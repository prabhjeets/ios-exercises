//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    int doub = [number intValue] * 2;
    NSNumber *num = [NSNumber numberWithInt:doub];
    return num;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:0];
    while (number <= otherNumber) {
        [array addObject:[NSNumber numberWithInteger:number]];
        number++;
    }
    return array;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSMutableArray *array = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [array sortUsingDescriptors:@[sortDescriptor]];
    NSInteger val = [array[0] longValue];
    return val;
}

@end
