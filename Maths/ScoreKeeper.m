//
//  ScoreKeeper.m
//  Maths
//
//  Created by Fariha on 6/5/18.
//  Copyright © 2018 Bootcamp. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init {
    if (self = [super init]) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}

- (NSString *)score {
    
    NSString* score = [NSString stringWithFormat:@"%ld right, %ld wrong", self.right, self.wrong];
    
    if (!(self.right + self.wrong == 0)) {
        score = [score stringByAppendingFormat:@" ---- %.1f%%", 100 * self.right / (float)(self.right + self.wrong)];
    }

    return score;
}

@end
