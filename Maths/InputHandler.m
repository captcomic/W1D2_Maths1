//
//  InputHandler.m
//  Maths
//
//  Created by Fariha on 6/5/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)parseString {
    
    char inputChars[255];
    
    NSString* inputString = [NSString stringWithCString:fgets(inputChars, 255, stdin) encoding:NSUTF8StringEncoding];
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    return [inputString stringByTrimmingCharactersInSet:characterSet];
}

@end
