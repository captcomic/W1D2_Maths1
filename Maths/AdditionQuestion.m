//
//  AdditionQuestion.m
//  Maths
//
//  Created by Fariha on 6/5/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        // generate two random numbers between 10 and 100
        long a = arc4random_uniform(91) + 10;
        long b = arc4random_uniform(91) + 10;
        _question = [NSString stringWithFormat:@"%ld + %ld = ?", a, b];
        _answer = a + b;
    }
    return self;
}

@end
