

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface FractionCalculator : NSObject

@property (strong, nonatomic) Fraction *fracBase;
@property (strong, nonatomic) Fraction *fracAnswer;

-(void) setBaseFraction: (Fraction *) fracGiven;
-(void) addFraction: (Fraction *) fracGiven;
-(void) subtractFraction: (Fraction *) fracGiven;
-(void) multiplyFraction: (Fraction *) fracGiven;
-(void) divideFraction: (Fraction *) fracGiven;
-(void) simplifyFraction: (Fraction *) fracGiven;




@end
