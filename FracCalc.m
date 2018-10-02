
//---- @implementation section ----

#import "FracCalc.h"

@implementation FractionCalculator


-(id) init{
    self = [super init];
    if(self){
        self.fracAnswer = [[Fraction alloc] init];
        self.fracBase = [[Fraction alloc] init];
    }
    return self;
}



-(void) setBaseFraction: (Fraction *) fracGiven{
    self.fracBase.numerator = fracGiven.numerator;
    self.fracBase.denominator = fracGiven.denominator;
}


-(void) addFraction: (Fraction *) fracGiven {
    self.fracAnswer.numerator = self.fracBase.numerator * fracGiven.denominator + self.fracBase.denominator * fracGiven.numerator;
    printf(" numerator here %i", self.fracAnswer.numerator);
    self.fracAnswer.denominator = self.fracBase.denominator * fracGiven.denominator;
    [self simplifyFraction: self.fracAnswer];
    printf("Your fraction is %i / %i \n", self.fracAnswer.numerator, self.fracAnswer.denominator);
}

-(void) subtractFraction: (Fraction *) fracGiven{
  self.fracAnswer.numerator = self.fracBase.numerator * fracGiven.denominator - self.fracBase.denominator * fracGiven.numerator;
  self.fracAnswer.denominator = self.fracBase.denominator * fracGiven.denominator;
  [self simplifyFraction: self.fracAnswer];
  printf("Your fraction is %i / %i \n", self.fracAnswer.numerator, self.fracAnswer.denominator);
}

-(void) multiplyFraction: (Fraction *) fracGiven{
  self.fracAnswer.numerator = self.fracBase.numerator * fracGiven.numerator;
  self.fracAnswer.denominator = self.fracBase.denominator * fracGiven.denominator;
  [self simplifyFraction: self.fracAnswer];
  printf("Your fraction is %i / %i \n", self.fracAnswer.numerator, self.fracAnswer.denominator);

}

-(void) divideFraction: (Fraction *) fracGiven{
  self.fracAnswer.numerator = self.fracBase.numerator * fracGiven.denominator;
  self.fracAnswer.denominator = self.fracBase.denominator * fracGiven.numerator;
  [self simplifyFraction: self.fracAnswer];
  printf("Your fraction is %i / %i \n", self.fracAnswer.numerator, self.fracAnswer.denominator);
}

-(void) simplifyFraction: (Fraction *) fracGiven{
  int tempHighestFactor;
  int highestFactor;
  for(int i = 1; i <= fracGiven.numerator; i++){
    if(fracGiven.numerator % i == 0 && fracGiven.denominator % i == 0){
      tempHighestFactor = i;
      if(tempHighestFactor > highestFactor){
        highestFactor = tempHighestFactor;
      }
    }
  }
  self.fracAnswer.numerator = fracGiven.numerator / highestFactor;
  self.fracAnswer.denominator = fracGiven.denominator / highestFactor;

}




@end
