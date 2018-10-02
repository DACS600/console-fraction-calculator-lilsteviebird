//
//  main.m
//  Prog1
//
//  Created by sli19 on 9/9/18.
//  Copyright © 2018 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FracCalc.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        printf("Am I in this program? \n");

        FractionCalculator *fractionComputed = [[FractionCalculator alloc] init];

        Fraction *firstFraction = [[Fraction alloc] init];
        Fraction *secondFraction = [[Fraction alloc] init];
        int firstFracNum;
        int firstFracDenom;
        int secondFracNum;
        int secondFracDenom;
        printf("Please enter a numerator: ");
        scanf("%i", &firstFracNum);
        printf("Please enter a denominator: ");
        scanf("%i", &firstFracDenom);
        firstFraction.numerator = firstFracNum;
        firstFraction.denominator = firstFracDenom;
        [fractionComputed setBaseFraction: firstFraction];
        printf("Please enter a second numerator: ");
        scanf("%i", &secondFracNum);
        printf("Please enter a second denominator: ");
        scanf("%i", &secondFracDenom);
        [secondFraction setNumerator: secondFracNum];
        [secondFraction setDenominator: secondFracDenom];


        [fractionComputed multiplyFraction: secondFraction];




    }
    return 0;
}
