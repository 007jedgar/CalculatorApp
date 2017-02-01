//
//  Calculator.h
//  CalculatorApp
//
//  Created by Jonathan Edgar on 2/1/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic, assign) double storage;


-(double) add:(double) firstNum secondNum:(double) secondNum;
-(double) subtract:(double) firstNum secondNum:(double) secondNum;
-(double) multiply:(double) firstNum secondNum:(double) secondNum;
-(double) divide:(double) firstNum secondNum:(double) secondNum;


@end
