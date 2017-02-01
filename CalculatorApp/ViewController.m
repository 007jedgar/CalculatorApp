//
//  ViewController.m
//  CalculatorApp
//
//  Created by Jonathan Edgar on 2/1/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//action for number buttons
-(IBAction)button0 {
    self.screenLabel.text = [NSString stringWithFormat: @"%@0",self.screenLabel.text];
}
-(IBAction)button1 {
    self.screenLabel.text = [NSString stringWithFormat: @"%@1",self.screenLabel.text];
}

-(IBAction)button2 {
    self.screenLabel.text = [NSString stringWithFormat: @"%@2",self.screenLabel.text];
}

-(IBAction)button3 {
    self.screenLabel.text = [NSString stringWithFormat: @"%@3",self.screenLabel.text];
}

-(IBAction)button4 {
    self.screenLabel.text = [NSString stringWithFormat: @"%@4",self.screenLabel.text];
}

-(IBAction)button5 {
    self.screenLabel.text = [NSString stringWithFormat: @"%@5",self.screenLabel.text];
}

-(IBAction)button6 {
    self.screenLabel.text = [NSString stringWithFormat: @"%@6",self.screenLabel.text];
}

-(IBAction)button7{
    self.screenLabel.text = [NSString stringWithFormat: @"%@7",self.screenLabel.text];
}

-(IBAction)button8 {
    self.screenLabel.text = [NSString stringWithFormat: @"%@8",self.screenLabel.text];
}

-(IBAction)button9 {
    self.screenLabel.text = [NSString stringWithFormat: @"%@9",self.screenLabel.text];
}

-(IBAction) clearButton {
    self.screenLabel.text = @" ";
}

-(IBAction)decimalButton {
    self.screenLabel.text = [NSString stringWithFormat: @"%@.",self.screenLabel.text];
}

//Opperator Buttons
-(IBAction) addButton {
    Operation = 1;
    storage = self.screenLabel.text;
    self.screenLabel.text = @" ";
}

-(IBAction) subtractButton {
    Operation = 2;
    storage = self.screenLabel.text;
    self.screenLabel.text = @" ";
}

-(IBAction) multiplyButton {
    Operation = 3;
    storage = self.screenLabel.text;
    self.screenLabel.text = @" ";
}

-(IBAction) divideButton {
    Operation = 4;
    storage = self.screenLabel.text;
    self.screenLabel.text = @" ";
}

//Class Calling (does operations)
-(NSString *) addNumbers{
    float num1 = storage.floatValue;
    float num2 = self.screenLabel.text.floatValue;
    Calculator *calculate = [[Calculator alloc] init];
    float totalInt = [calculate add:num1 secondNum:num2];
    NSString *totalString = [NSString stringWithFormat:@"%.3f",totalInt];
    return totalString;
}

-(NSString *) subtractNumbers{
    float num1 = storage.floatValue;
    float num2 = self.screenLabel.text.floatValue;
    Calculator *calculate = [[Calculator alloc] init];
    float totalInt = [calculate subtract:num1 secondNum:num2];
    NSString *totalString = [NSString stringWithFormat:@"%.3f",totalInt];
    return totalString;
}

-(NSString *) multiplyNumbers{
    float num1 = storage.floatValue;
    float num2 = self.screenLabel.text.floatValue;
    Calculator *calculate = [[Calculator alloc] init];
    float totalInt = [calculate multiply:num1 secondNum:num2];
    NSString *totalString = [NSString stringWithFormat:@"%.3f",totalInt];
    return totalString;
}

-(NSString *) divideNumbers{
    float num1 = storage.floatValue;
    float num2 = self.screenLabel.text.floatValue;
    Calculator *calculate = [[Calculator alloc] init];
    float totalInt = [calculate divide:num1 secondNum:num2];
    NSString *totalString = [NSString stringWithFormat:@"%.3f",totalInt];
    return totalString;
}

//EqualButton. Takes value from classes and "shoots" it through to the screen depending on which button was chosen
-(IBAction) equalButton {
    
    switch (Operation) {
        case 1:
            self.screenLabel.text = [self addNumbers];
            break;
        case 2:
            self.screenLabel.text = [self subtractNumbers];
            break;
        case 3:
            self.screenLabel.text = [self multiplyNumbers];
            break;
        case 4:
            self.screenLabel.text = [self divideNumbers];
            break;
    }
    storage = @" ";
}





@end




