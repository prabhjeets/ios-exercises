//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *arrayFromString = [characterString componentsSeparatedByString:@";"];
    
    return arrayFromString;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *stringFromArray = [characterArray componentsJoinedByString:@";"];
    return stringFromArray;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *sortedList = [characterArray mutableCopy];
    
    NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [sortedList sortUsingDescriptors:@[descriptor]];
    return sortedList;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    BOOL containsWorf = NO;
    
    for (NSString *character in characterArray) {
        if ([character containsString:@"Worf"])
            containsWorf = YES;
    }
    
    return containsWorf;
}

@end
