
//---- @implementation section ----

#import "Fraction.h"

@implementation Fraction

-(id) init
{
  self = [super init];
  if(self){
    self.numerator = 1;
    self.denominator = 1;
  }
  return self;
}


-(void) setNumerator: (int) n setDenominator: (int) d {
  self.numerator = n;
  self.denominator = d;
}

@end
