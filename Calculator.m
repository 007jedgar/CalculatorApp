//
//  Calculator.m
//  CalculatorApp
//
//  Created by Jonathan Edgar on 2/1/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator



-(double) add:(double) firstNum secondNum:(double) secondNum {
    double total = firstNum + secondNum;
    return total;
}

-(double) subtract:(double) firstNum secondNum:(double) secondNum {
    double total = firstNum - secondNum;
    return total;
}

-(double) multiply:(double) firstNum secondNum:(double) secondNum {
    double total = firstNum * secondNum;
    return total;
}

-(double) divide:(double) firstNum secondNum:(double) secondNum {
    double total = firstNum / secondNum;
    return total;
}





@end
