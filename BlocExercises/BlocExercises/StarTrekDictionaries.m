//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return [characterDictionary objectForKey:@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSMutableArray *returnArray = [[NSMutableArray alloc] initWithCapacity:0];
    
    for (NSDictionary *dict in charactersArray) {
        [returnArray addObject:[dict objectForKey:@"favorite drink"]];
    }
    
    return returnArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *dict = [characterDictionary mutableCopy];
    
    [dict setObject:@"Time for bed" forKey:@"quote"];
    
    return dict;
}

@end
